//go:build !windows

package launcher

import (
	"fmt"
	"os"
	"path/filepath"
	"runtime"
	"strconv"
)

func (l *postgresLauncher) getDataPath() string {
	ex, err := os.Executable()
	if err != nil {
		panic(err)
	}
	name := fmt.Sprintf("%s-%s", defaultFolderName, runtime.GOOS)
	path := filepath.Clean(filepath.Join(filepath.Dir(ex), "..", name))
	if err = os.MkdirAll(path, os.ModePerm); err != nil {
		panic(err)
	}
	if u := l.getPosgresUser(); u != nil {
		uid, sErr := strconv.Atoi(u.Uid)
		if sErr != nil {
			panic(sErr)
		}
		gid, sErr := strconv.Atoi(u.Gid)
		if sErr != nil {
			panic(sErr)
		}
		if err = os.Chown(path, uid, gid); err != nil {
			panic(err)
		}
	}
	return path
}
