//go:build windows

package launcher

import (
	"path/filepath"

	"github.com/shibukawa/configdir"
)

func (l *postgresLauncher) getDataPath() string {
	configDirs := configdir.New("Moldlink", l.dbName)
	paths := configDirs.QueryFolders(configdir.System)
	return filepath.Join(paths[0].Path, defaultFolderName)
}
