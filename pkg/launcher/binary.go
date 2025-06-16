package launcher

import "path/filepath"

const (
	cliInitDB  = "initdb"
	cliPsql    = "psql"
	cliPGCtl   = "pg_ctl"
	cliDump    = "pg_dump"
	cliRestore = "pg_restore"
)

const (
	cliExport = "postgres_exporter"
)

func (l *postgresLauncher) getCliInitDB() string {
	if l.binaryRoot == "" {
		return cliInitDB
	}
	return filepath.Join(l.binaryRoot, cliInitDB)
}

func (l *postgresLauncher) getCliPsql() string {
	if l.binaryRoot == "" {
		return cliPsql
	}
	return filepath.Join(l.binaryRoot, cliPsql)
}

func (l *postgresLauncher) getCliPGCtl() string {
	if l.binaryRoot == "" {
		return cliPGCtl
	}
	return filepath.Join(l.binaryRoot, cliPGCtl)
}

func (l *postgresLauncher) getCliDump() string {
	if l.binaryRoot == "" {
		return cliDump
	}
	return filepath.Join(l.binaryRoot, cliDump)
}

func (l *postgresLauncher) getCliRestore() string {
	if l.binaryRoot == "" {
		return cliRestore
	}
	return filepath.Join(l.binaryRoot, cliRestore)
}

func (l *postgresLauncher) getCliExport() string {
	if l.binaryRoot == "" {
		return cliExport
	}
	return filepath.Join(l.binaryRoot, cliExport)
}
