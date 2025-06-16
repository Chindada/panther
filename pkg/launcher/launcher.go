package launcher

import (
	"archive/zip"
	"bytes"
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"net"
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
	"strings"
	"sync"
	"syscall"
	"time"

	capitanMigrate "github.com/chindada/panther/migrations/capitan"
	"github.com/chindada/panther/pkg/client"
	"github.com/chindada/panther/pkg/logger"
	"github.com/golang-migrate/migrate/v4"
	bindata "github.com/golang-migrate/migrate/v4/source/go_bindata"
	"github.com/jackc/pgx/v5"

	// postgres driver.
	_ "github.com/golang-migrate/migrate/v4/database/postgres"
	_ "github.com/golang-migrate/migrate/v4/source/file"
)

const (
	dbNameCapitan = "capitan"
)

const (
	defaultUser          = "postgres"
	defaultPass          = "password"
	defaultFolderName    = "data/postgres"
	defaultPort          = "5432"
	defaultListenAddress = "*"
	defaultDateLayout    = "20060102150405"
)

const (
	filePWD    = "pwfile"
	fileLog    = "postgres.log"
	fileConfig = "postgresql.conf"
)

const (
	migrationTable = "schema_migrations"
)

var (
	singleton PGLauncher
	once      sync.Once
)

var ErrDatabaseAlreadyExists = errors.New("database already exists")

type PGLauncher interface {
	InitDB(start bool) error
	DatabaseAlreadyExists() bool
	MigrateScheme(step *int) error
	StartDB() error
	StopDB() error
	ClearDB() error
	IsRunning() (bool, error)
	RestoreDatabase(name string) error
	Backup(auto bool) error
	ListBackups() ([]Backup, error)
	DeleteBackup(name string) error
	LoadBackupArchiveFile(path string) error
	Zip(zipName, sourceDir string) error

	RunExporter() error
	GetDataPath() string
	GetSocketPath() string
}

type postgresLauncher struct {
	logger.Logger

	mutex   sync.Mutex
	verbose bool
	needLog bool

	port          string
	dbName        string
	listenAddress string
	binaryRoot    string
	socketPath    string

	exporterProcess *exec.Cmd
}

func Init(opts ...Option) {
	if singleton == nil {
		once.Do(func() {
			dbt := &postgresLauncher{
				listenAddress: defaultListenAddress,
				port:          defaultPort,
			}
			for _, opt := range opts {
				opt(dbt)
			}
			if dbt.Logger == nil {
				dbt.Logger = logger.NewLogger(nil)
			}
			singleton = dbt
			if err := dbt.validate(); err != nil {
				dbt.Fatalf("postgres launcher init error: %v", err)
			}
		})
	}
}

func Get() PGLauncher {
	if singleton == nil {
		panic("postgres launcher not initialized")
	}
	return singleton
}

func (l *postgresLauncher) GetDataPath() string {
	return l.getDataPath()
}

func (l *postgresLauncher) GetSocketPath() string {
	return l.socketPath
}

func (l *postgresLauncher) validate() error {
	if l.dbName == "" {
		return errors.New("database name is required")
	}
	if l.dbName != dbNameCapitan {
		return errors.New("invalid database name")
	}
	return nil
}

func (l *postgresLauncher) RunExporter() error {
	os.Setenv("DATA_SOURCE_URI", fmt.Sprintf("%s:%s/postgres?sslmode=disable", l.getListenAddress(), l.port))
	os.Setenv("DATA_SOURCE_USER", defaultUser)
	os.Setenv("DATA_SOURCE_PASS", defaultPass)
	args := []string{"--log.level=error"}
	cmd := l.newCMD(l.getCliExport(), args...)
	err := cmd.Start()
	if err != nil {
		return err
	}
	l.exporterProcess = cmd
	return nil
}

func (l *postgresLauncher) getListenAddress() string {
	if l.listenAddress == "*" {
		return "localhost"
	}
	return l.listenAddress
}

func (l *postgresLauncher) InitDB(start bool) error {
	l.mutex.Lock()
	if err := l.writePWfile(); err != nil {
		return err
	}
	args := []string{
		"-D", l.getDataPath(),
		"-U", defaultUser,
		"-E", "UTF8",
		"--no-locale",
		fmt.Sprintf("--pwfile=./%s", filePWD),
	}
	cmd := l.newCMD(l.getCliInitDB(), args...)
	l.Infof("initializing database...")
	err := cmd.Start()
	if err != nil {
		return err
	}
	if err = cmd.Wait(); err != nil {
		return err
	}
	if err = os.Remove(filePWD); err != nil {
		return err
	}
	l.Infof("database initialized")
	l.mutex.Unlock()
	if err = l.StartDB(); err != nil {
		return err
	} else if err = l.createDB(); err != nil {
		return err
	}
	if !start {
		return l.StopDB()
	}
	return nil
}

func (l *postgresLauncher) createDB() error {
	args := []string{
		"-U", defaultUser,
		"-h", l.getListenAddress(),
		"-p", l.port,
		"-c", fmt.Sprintf("CREATE DATABASE %s", l.dbName),
	}
	cmd := l.newCMD(l.getCliPsql(), args...)
	l.Infof("creating database...")
	err := cmd.Start()
	if err != nil {
		return err
	}
	if err = cmd.Wait(); err != nil {
		return err
	}
	l.Infof("database created")
	return nil
}

func (l *postgresLauncher) IsRunning() (bool, error) {
	l.mutex.Lock()
	defer l.mutex.Unlock()

	args := []string{
		"-D", l.getDataPath(),
		"status",
	}
	cmd := l.newCMDWithoutSetSTD(l.getCliPGCtl(), args...)
	output, _ := cmd.Output()
	outputStr := string(output)
	if strings.Contains(outputStr, "PID") {
		l.extractSocketPath(outputStr)
		return true, nil
	}
	return false, nil
}

func (l *postgresLauncher) extractSocketPath(input string) {
	splitByLine := strings.Split(input, "\n")
	for _, line := range splitByLine {
		splitBySpace := strings.Fields(line)
		for _, word := range splitBySpace {
			re := regexp.MustCompile(`"(\S+)=(\S+)"`)
			matches := re.FindStringSubmatch(word)
			if len(matches) > 2 && matches[1] == "unix_socket_directories" {
				_, err := os.Stat(matches[2])
				if err == nil {
					l.socketPath = filepath.Clean(matches[2])
					return
				}
			}
		}
	}
}

func (l *postgresLauncher) StartDB() error {
	running, err := l.IsRunning()
	if err != nil {
		return err
	} else if running {
		l.Infof("database already running")
		return nil
	}
	l.mutex.Lock()
	defer l.mutex.Unlock()

	opts := l.serverOption()
	args := []string{}
	args = append(args, "-D", l.getDataPath())
	args = append(args, "-o", opts)
	if l.needLog {
		args = append(args, "-l", filepath.Join(l.getDataPath(), fileLog))
	}
	args = append(args, "-s", "-w", "start")
	cmd := l.newCMD(l.getCliPGCtl(), args...)
	l.Infof("starting database...")
	err = cmd.Start()
	if err != nil {
		return err
	}
	if err = cmd.Wait(); err != nil {
		return err
	}
	l.extractSocketPath(opts)
	l.Infof("database started")
	return nil
}

func (l *postgresLauncher) StopDB() error {
	running, err := l.IsRunning()
	if err != nil {
		return err
	} else if !running {
		l.Infof("database already stopped")
		return nil
	}

	if l.exporterProcess != nil {
		l.Infof("stopping exporter...")
		_ = l.exporterProcess.Process.Signal(syscall.SIGTERM)
	}

	l.mutex.Lock()
	defer l.mutex.Unlock()

	args := []string{}
	args = append(args, "-D", l.getDataPath())
	args = append(args, "-o", l.serverOption())
	if l.needLog {
		args = append(args, "-l", filepath.Join(l.getDataPath(), fileLog))
	}
	args = append(args, "-w", "stop")
	cmd := l.newCMD(l.getCliPGCtl(), args...)
	l.Infof("stopping database...")
	err = cmd.Start()
	if err != nil {
		return err
	}
	if err = cmd.Wait(); err != nil {
		return err
	}
	l.socketPath = ""
	l.Infof("database stopped")
	return nil
}

func (l *postgresLauncher) getBackupPath(name ...string) string {
	ex, err := os.Executable()
	if err != nil {
		panic(err)
	}
	path := filepath.Join(filepath.Dir(ex), "..", "db_backup")
	if len(name) > 0 {
		path = filepath.Join(path, name[0])
	}
	if err = os.MkdirAll(path, os.ModePerm); err != nil {
		return ""
	}
	if err = os.Chmod(path, 0o777); err != nil {
		return ""
	}
	return path
}

func (l *postgresLauncher) Backup(auto bool) error {
	running, err := l.IsRunning()
	if err != nil {
		return err
	}
	if !running {
		err = l.StartDB()
		if err != nil {
			return err
		}
		defer func() {
			err = l.StopDB()
			if err != nil {
				panic(err)
			}
		}()
	}
	name := fmt.Sprintf("%s-%s", l.dbName, time.Now().Format(defaultDateLayout))
	if auto {
		if err = l.deleteAutoBackup(); err != nil {
			return err
		}
	}
	backUpPath := l.getBackupPath(name)
	args := []string{}
	args = append(args, "-Fd")
	args = append(args, "-f", backUpPath)
	args = append(args, "-p", l.port)
	args = append(args, "-h", l.getListenAddress())
	args = append(args, "-U", defaultUser)
	args = append(args, l.dbName)
	cmd := l.newCMD(l.getCliDump(), args...)
	err = cmd.Start()
	if err != nil {
		return err
	}
	if err = cmd.Wait(); err != nil {
		return err
	}
	meta, err := l.newMeta(auto)
	if err != nil {
		return err
	}
	metaPath := filepath.Join(backUpPath, backupMetaFile)
	content, err := json.Marshal(meta)
	if err != nil {
		return err
	}
	if err = os.WriteFile(metaPath, content, 0o600); err != nil {
		return err
	}
	return nil
}

func (l *postgresLauncher) backupExists(name string) bool {
	backups, err := l.ListBackups()
	if err != nil {
		return false
	}
	_, ok := l.backupsToMap(backups)[name]
	return ok
}

func (l *postgresLauncher) DeleteBackup(name string) error {
	backups, err := l.ListBackups()
	if err != nil {
		return err
	}
	backup, ok := l.backupsToMap(backups)[name]
	if !ok {
		return fmt.Errorf("backup:%s not found", name)
	}
	return os.RemoveAll(backup.Path)
}

func (l *postgresLauncher) deleteAutoBackup() error {
	backups, err := l.ListBackups()
	if err != nil {
		return err
	}
	for _, b := range backups {
		meta, lErr := l.loadMeta(b.Path)
		if lErr != nil {
			return lErr
		}
		if strings.HasPrefix(meta.Name, fmt.Sprintf("%s-auto-", l.dbName)) {
			if err = os.RemoveAll(b.Path); err != nil {
				return err
			}
		}
	}
	return nil
}

func (l *postgresLauncher) RestoreDatabase(name string) error {
	if name == "" {
		return errors.New("name is required")
	}
	backups, err := l.ListBackups()
	if err != nil {
		return err
	}
	backup, ok := l.backupsToMap(backups)[name]
	if !ok {
		return fmt.Errorf("backup:%s not found", name)
	}
	meta, err := l.newMeta(false)
	if err != nil {
		return err
	}
	if meta.Migration < backup.migration {
		return fmt.Errorf("backup migration:%d is greater than current:%d", backup.migration, meta.Migration)
	}
	if err = l.ClearDB(); err != nil {
		return err
	}
	if err = l.InitDB(true); err != nil {
		return err
	}
	defer func() {
		err = l.StopDB()
		if err != nil {
			panic(err)
		}
	}()
	args := []string{}
	args = append(args, "--if-exists")
	args = append(args, "-U", defaultUser)
	args = append(args, "-c")
	args = append(args, "-p", l.port)
	args = append(args, "-h", l.getListenAddress())
	args = append(args, "-d", l.dbName)
	args = append(args, backup.Path)
	cmd := l.newCMD(l.getCliRestore(), args...)
	l.Infof("restoring database from %s", name)
	err = cmd.Start()
	if err != nil {
		return err
	}
	if err = cmd.Wait(); err != nil {
		return err
	}
	l.Infof("database restored")
	return nil
}

type Backup struct {
	Name      string
	Path      string
	CreatedAt time.Time

	// hidden field
	migration int
}

func (l *postgresLauncher) backupsToMap(backups []Backup) map[string]*Backup {
	result := map[string]*Backup{}
	for i, b := range backups {
		result[b.Name] = &backups[i]
	}
	return result
}

func (l *postgresLauncher) ListBackups() ([]Backup, error) {
	backUpPath := l.getBackupPath()
	files, err := os.ReadDir(backUpPath)
	if err != nil {
		return nil, err
	}
	result := []Backup{}
	for _, f := range files {
		if f.IsDir() {
			meta, lErr := l.loadMeta(filepath.Join(backUpPath, f.Name()))
			if lErr != nil {
				continue
			}
			createTime, pErr := time.ParseInLocation(
				defaultDateLayout,
				meta.BackupTime,
				time.Local,
			)
			if pErr != nil {
				return nil, pErr
			}
			result = append(result, Backup{
				Name:      meta.Name,
				Path:      filepath.Join(backUpPath, f.Name()),
				CreatedAt: createTime,
				migration: meta.Migration,
			})
		}
	}
	return result, nil
}

func (l *postgresLauncher) ClearDB() error {
	status, err := l.IsRunning()
	if err != nil {
		return err
	}
	if status {
		if err = l.StopDB(); err != nil {
			return err
		}
	}

	l.mutex.Lock()
	defer l.mutex.Unlock()

	if err = os.RemoveAll(l.getDataPath()); err != nil {
		return err
	}
	return nil
}

func (l *postgresLauncher) writePWfile() error {
	f, err := os.Create(filePWD)
	if err != nil {
		return err
	}
	defer f.Close()
	_, err = f.WriteString(fmt.Sprintf("%s\n", defaultPass))
	if err != nil {
		return err
	}
	return nil
}

func (l *postgresLauncher) DatabaseAlreadyExists() bool {
	l.mutex.Lock()
	defer l.mutex.Unlock()

	path := filepath.Join(l.getDataPath(), fileConfig)
	_, err := os.Stat(path)
	return err == nil
}

func (l *postgresLauncher) Zip(zipName, sourceDir string) error {
	zipFile, err := os.Create(zipName)
	if err != nil {
		return err
	}
	defer func() { _ = zipFile.Close() }()

	zipWriter := zip.NewWriter(zipFile)
	defer func() { _ = zipWriter.Close() }()

	err = filepath.Walk(sourceDir,
		func(path string, info os.FileInfo, err error) error {
			if err != nil {
				return err
			}
			if !info.IsDir() {
				zippedFile, oErr := os.Open(path)
				if oErr != nil {
					return oErr
				}
				defer func() { _ = zippedFile.Close() }()

				zipPath := strings.TrimPrefix(path, fmt.Sprintf("%s%s", filepath.Dir(sourceDir), string(os.PathSeparator)))
				w1, oErr := zipWriter.Create(strings.ReplaceAll(zipPath, "\\", "/"))
				if oErr != nil {
					return oErr
				}
				if _, cErr := io.Copy(w1, zippedFile); cErr != nil {
					return cErr
				}
			}
			return nil
		},
	)
	if err != nil {
		return err
	}
	return nil
}

const (
	_defaultAttempts = 20
	_defaultWait     = time.Second
)

func (l *postgresLauncher) getMigrationSource() *bindata.AssetSource {
	switch l.dbName {
	case dbNameCapitan:
		return bindata.Resource(capitanMigrate.AssetNames(), capitanMigrate.Asset)
	default:
		panic("invalid database name")
	}
}

func (l *postgresLauncher) MigrateScheme(step *int) error {
	running, err := l.IsRunning()
	if err != nil {
		return err
	}
	if !running {
		err = l.StartDB()
		if err != nil {
			return err
		}
		defer func() {
			err = l.StopDB()
			if err != nil {
				panic(err)
			}
		}()
	}
	m := &migrate.Migrate{}
	attempts := _defaultAttempts
	path := fmt.Sprintf("postgres://postgres:password@%s/%s%s",
		net.JoinHostPort(l.getListenAddress(), l.port), l.dbName, "?sslmode=disable")
	d, err := bindata.WithInstance(l.getMigrationSource())
	if err != nil {
		return err
	}
	for attempts > 0 {
		m, err = migrate.NewWithSourceInstance("go-bindata", d, path)
		if err == nil {
			break
		}

		l.Infof("migrate trying to connect postgres, attempts left: %d", attempts)
		time.Sleep(_defaultWait)
		attempts--
	}
	if err != nil {
		return fmt.Errorf("postgres connect error in migrate: %w", err)
	}

	defer func() {
		_, _ = m.Close()
	}()

	return l.migrate(m, step)
}

func (l *postgresLauncher) migrate(m *migrate.Migrate, step *int) error {
	if step == nil {
		err := m.Up()
		if err != nil {
			if err == migrate.ErrNoChange {
				l.Infof("migrate no change")
				return nil
			}
			return fmt.Errorf("migrate db error: %w", err)
		}
		l.Infof("migrate success")
		return nil
	}
	current, dirty, err := m.Version()
	if err != nil {
		return fmt.Errorf("migrate db error: %w", err)
	} else if dirty {
		return errors.New("database is dirty")
	}
	if *step < 0 && int(current)+*step < 0 {
		return errors.New("step is too small")
	}
	return m.Steps(*step)
}

func (l *postgresLauncher) LoadBackupArchiveFile(path string) error {
	backUpName, err := l.archiveIsValid(path)
	if err != nil {
		return err
	}
	if err = os.MkdirAll(l.getBackupPath(backUpName), os.ModePerm); err != nil {
		return err
	}
	archive, err := zip.OpenReader(path)
	if err != nil {
		return err
	}
	defer func() {
		_ = archive.Close()
	}()
	for _, f := range archive.File {
		dstFile, oErr := os.OpenFile(
			filepath.Join(l.getBackupPath(backUpName), filepath.Base(f.Name)),
			os.O_WRONLY|os.O_CREATE|os.O_TRUNC, f.Mode(),
		)
		if oErr != nil {
			return oErr
		}
		fileInArchive, oErr := f.Open()
		if oErr != nil {
			return oErr
		}
		for {
			_, err = io.CopyN(dstFile, fileInArchive, 1024)
			if err != nil {
				if err == io.EOF {
					break
				}
				return err
			}
		}
		_ = dstFile.Close()
		_ = fileInArchive.Close()
	}
	return nil
}

func (l *postgresLauncher) archiveIsValid(path string) (string, error) {
	archive, err := zip.OpenReader(path)
	if err != nil {
		return "", err
	}
	defer func() {
		_ = archive.Close()
	}()
	backUpName := ""
	for _, f := range archive.File {
		if f.FileInfo().IsDir() {
			return "", errors.New("invalid backup archive: directory found")
		}
		if filepath.Base(f.Name) == backupMetaFile {
			r, e := f.Open()
			if e != nil {
				return "", e
			}
			buf := bytes.NewBuffer(nil)
			_, e = buf.ReadFrom(r)
			if e != nil {
				return "", e
			}
			_ = r.Close()
			meta := metaData{}
			if e = json.Unmarshal(buf.Bytes(), &meta); e != nil {
				return "", e
			}
			if meta.DBName != l.dbName {
				return "", errors.New("invalid database name in meta")
			}
			backUpName = meta.Name
			break
		}
	}
	if backUpName == "" {
		return "", errors.New("invalid backup archive")
	}
	if l.backupExists(backUpName) {
		return "", errors.New("backup already exists")
	}
	return backUpName, nil
}

const (
	backupMetaFile = ".meta"
)

type metaData struct {
	DBName     string `json:"db_name"`
	Name       string `json:"name"`
	Migration  int    `json:"migration"`
	BackupTime string `json:"backup_time"`
}

func (l *postgresLauncher) getFullPath() string {
	return fmt.Sprintf("postgres://%s:%s@%s/%s",
		defaultUser,
		defaultPass,
		net.JoinHostPort(l.getListenAddress(), l.port),
		l.dbName,
	)
}

func (l *postgresLauncher) loadMeta(dataPath string) (*metaData, error) {
	metaPath := filepath.Join(dataPath, backupMetaFile)
	metaFile, err := os.ReadFile(metaPath)
	if err != nil {
		return nil, err
	}
	meta := metaData{}
	if err = json.Unmarshal(metaFile, &meta); err != nil {
		return nil, err
	}
	if meta.DBName != l.dbName {
		return nil, errors.New("invalid database name in meta")
	}
	return &meta, nil
}

func (l *postgresLauncher) newMeta(auto bool) (*metaData, error) {
	c, err := client.New(
		l.getFullPath(),
		client.MaxPoolSize(1),
		client.AddLogger(l.Logger),
	)
	if err != nil {
		return nil, err
	}
	defer c.Close()
	sql, args, err := c.Builder().
		Select("version, dirty").
		From(migrationTable).
		ToSql()
	if err != nil {
		return nil, err
	}
	row := c.Pool().QueryRow(context.Background(), sql, args...)
	var mig int
	var dirty bool
	if err = row.Scan(&mig, &dirty); err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return &metaData{}, nil
		}
		return nil, err
	}
	if dirty {
		return nil, errors.New("database is dirty")
	}
	now := time.Now().Format(defaultDateLayout)
	name := fmt.Sprintf("%s-%s", l.dbName, now)
	if auto {
		name = fmt.Sprintf("%s-auto-%s", l.dbName, now)
	}
	return &metaData{
		Name:       name,
		Migration:  mig,
		BackupTime: now,
		DBName:     l.dbName,
	}, nil
}
