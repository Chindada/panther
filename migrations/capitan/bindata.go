// Code generated for package migrations by go-bindata DO NOT EDIT. (@generated)
// sources:
// migrations/capitan/0001_capitan.down.sql
// migrations/capitan/0001_capitan.up.sql
package migrations

import (
	"bytes"
	"compress/gzip"
	"fmt"
	"io"
	"io/ioutil"
	"os"
	"path/filepath"
	"strings"
	"time"
)

func bindataRead(data []byte, name string) ([]byte, error) {
	gz, err := gzip.NewReader(bytes.NewBuffer(data))
	if err != nil {
		return nil, fmt.Errorf("Read %q: %v", name, err)
	}

	var buf bytes.Buffer
	_, err = io.Copy(&buf, gz)
	clErr := gz.Close()

	if err != nil {
		return nil, fmt.Errorf("Read %q: %v", name, err)
	}
	if clErr != nil {
		return nil, err
	}

	return buf.Bytes(), nil
}

type asset struct {
	bytes []byte
	info  os.FileInfo
}

type bindataFileInfo struct {
	name    string
	size    int64
	mode    os.FileMode
	modTime time.Time
}

// Name return file name
func (fi bindataFileInfo) Name() string {
	return fi.name
}

// Size return file size
func (fi bindataFileInfo) Size() int64 {
	return fi.size
}

// Mode return file mode
func (fi bindataFileInfo) Mode() os.FileMode {
	return fi.mode
}

// Mode return file modify time
func (fi bindataFileInfo) ModTime() time.Time {
	return fi.modTime
}

// IsDir return file whether a directory
func (fi bindataFileInfo) IsDir() bool {
	return fi.mode&os.ModeDir != 0
}

// Sys return file is sys mode
func (fi bindataFileInfo) Sys() interface{} {
	return nil
}

var __0001_capitanDownSql = []byte("\x1f\x8b\x08\x00\x00\x00\x00\x00\x00\xff\x72\x72\x75\xf7\xf4\xb3\xe6\x72\x09\xf2\x0f\x50\x08\x71\x74\xf2\x71\x55\xf0\x74\x53\x70\x8d\xf0\x0c\x0e\x09\x56\x28\xae\x2c\x2e\x49\xcd\x8d\x4f\x2d\x4b\xcd\x2b\x89\xcf\xc9\x4f\xcf\xcc\xc3\xaf\x30\x31\x39\x39\xbf\x34\xaf\x04\xbf\xa2\x92\xfc\x92\x02\x6b\x2e\x67\x7f\x5f\x5f\xcf\x10\x6b\x2e\x2e\x40\x00\x00\x00\xff\xff\xe1\xf5\xec\xd2\x80\x00\x00\x00")

func _0001_capitanDownSqlBytes() ([]byte, error) {
	return bindataRead(
		__0001_capitanDownSql,
		"0001_capitan.down.sql",
	)
}

func _0001_capitanDownSql() (*asset, error) {
	bytes, err := _0001_capitanDownSqlBytes()
	if err != nil {
		return nil, err
	}

	info := bindataFileInfo{name: "0001_capitan.down.sql", size: 128, mode: os.FileMode(420), modTime: time.Unix(1750059428, 0)}
	a := &asset{bytes: bytes, info: info}
	return a, nil
}

var __0001_capitanUpSql = []byte("\x1f\x8b\x08\x00\x00\x00\x00\x00\x00\xff\x94\x92\xc1\x4e\x83\x40\x10\x86\xef\x3c\xc5\x84\x93\x4d\x7c\x83\x9e\x68\x3b\x18\x22\xa5\x0a\x4b\x62\x4f\x64\x0b\x13\xdd\x04\x76\x71\x77\x5a\xa3\x4f\x6f\xa8\xdb\x44\xab\xb4\x78\xde\x2f\x33\xff\x3f\xdf\x2e\xf0\x2e\xc9\xe6\xc1\x32\xc7\x48\x20\x88\x68\x91\x22\x24\x31\x64\x1b\x01\xf8\x94\x14\xa2\x00\xf7\xee\x98\xba\x8a\x0d\xf7\x37\x01\x00\x40\xa8\x9a\x10\x1c\x59\x25\x5b\x78\xc8\x93\x75\x94\x6f\xe1\x1e\xb7\xb7\x5f\x8f\x8e\x6a\x4b\x1c\xc2\x41\xda\xfa\x45\xda\xe3\xa4\xac\x4c\x53\x28\xb3\xe4\xb1\x44\x4f\xbd\xda\xaa\x36\x0d\x8d\x62\xc1\x6c\x4a\x26\x59\xd7\x66\xaf\x79\x4a\x2c\xea\xa4\x6a\xaf\xa5\xda\x3b\xb2\x5a\x76\xe3\xb1\x3c\xd7\x4b\xe7\xde\x8c\x6d\x7e\x73\x1e\xb0\xa6\xa5\x10\x94\xe6\xf3\x07\xd2\x72\xd7\xd2\xf1\x98\x21\xec\x8c\x69\x49\x6a\x58\x61\x1c\x95\xa9\x80\x38\x4a\x8b\xd3\x8a\x81\xa8\x86\x46\xc3\x90\x1c\x63\xcc\x31\x5b\xe2\x4f\x1b\x43\xe3\x19\x6c\x32\x58\x61\x8a\x02\xa1\x40\x1f\xf6\x34\xf0\xdb\xe2\xda\x92\x64\x6a\x2a\xc9\x21\xb0\xea\xc8\xb1\xec\x7a\xfe\x38\xcf\xb7\xef\x9b\x8b\xd8\x34\x2f\x74\x20\xcd\x55\x6b\x9e\x95\x9e\xe2\xc6\x6b\xbc\x50\xf7\x24\xfa\x3f\x8d\x55\x3f\xae\x87\x5c\xef\xff\xdf\x1f\x8e\xae\x9d\xea\x78\x83\xcd\x7a\x9d\x88\x79\x10\x7c\x06\x00\x00\xff\xff\x3a\x34\x93\x57\x40\x03\x00\x00")

func _0001_capitanUpSqlBytes() ([]byte, error) {
	return bindataRead(
		__0001_capitanUpSql,
		"0001_capitan.up.sql",
	)
}

func _0001_capitanUpSql() (*asset, error) {
	bytes, err := _0001_capitanUpSqlBytes()
	if err != nil {
		return nil, err
	}

	info := bindataFileInfo{name: "0001_capitan.up.sql", size: 832, mode: os.FileMode(420), modTime: time.Unix(1750059398, 0)}
	a := &asset{bytes: bytes, info: info}
	return a, nil
}

// Asset loads and returns the asset for the given name.
// It returns an error if the asset could not be found or
// could not be loaded.
func Asset(name string) ([]byte, error) {
	cannonicalName := strings.Replace(name, "\\", "/", -1)
	if f, ok := _bindata[cannonicalName]; ok {
		a, err := f()
		if err != nil {
			return nil, fmt.Errorf("Asset %s can't read by error: %v", name, err)
		}
		return a.bytes, nil
	}
	return nil, fmt.Errorf("Asset %s not found", name)
}

// MustAsset is like Asset but panics when Asset would return an error.
// It simplifies safe initialization of global variables.
func MustAsset(name string) []byte {
	a, err := Asset(name)
	if err != nil {
		panic("asset: Asset(" + name + "): " + err.Error())
	}

	return a
}

// AssetInfo loads and returns the asset info for the given name.
// It returns an error if the asset could not be found or
// could not be loaded.
func AssetInfo(name string) (os.FileInfo, error) {
	cannonicalName := strings.Replace(name, "\\", "/", -1)
	if f, ok := _bindata[cannonicalName]; ok {
		a, err := f()
		if err != nil {
			return nil, fmt.Errorf("AssetInfo %s can't read by error: %v", name, err)
		}
		return a.info, nil
	}
	return nil, fmt.Errorf("AssetInfo %s not found", name)
}

// AssetNames returns the names of the assets.
func AssetNames() []string {
	names := make([]string, 0, len(_bindata))
	for name := range _bindata {
		names = append(names, name)
	}
	return names
}

// _bindata is a table, holding each asset generator, mapped to its name.
var _bindata = map[string]func() (*asset, error){
	"0001_capitan.down.sql": _0001_capitanDownSql,
	"0001_capitan.up.sql":   _0001_capitanUpSql,
}

// AssetDir returns the file names below a certain
// directory embedded in the file by go-bindata.
// For example if you run go-bindata on data/... and data contains the
// following hierarchy:
//     data/
//       foo.txt
//       img/
//         a.png
//         b.png
// then AssetDir("data") would return []string{"foo.txt", "img"}
// AssetDir("data/img") would return []string{"a.png", "b.png"}
// AssetDir("foo.txt") and AssetDir("notexist") would return an error
// AssetDir("") will return []string{"data"}.
func AssetDir(name string) ([]string, error) {
	node := _bintree
	if len(name) != 0 {
		cannonicalName := strings.Replace(name, "\\", "/", -1)
		pathList := strings.Split(cannonicalName, "/")
		for _, p := range pathList {
			node = node.Children[p]
			if node == nil {
				return nil, fmt.Errorf("Asset %s not found", name)
			}
		}
	}
	if node.Func != nil {
		return nil, fmt.Errorf("Asset %s not found", name)
	}
	rv := make([]string, 0, len(node.Children))
	for childName := range node.Children {
		rv = append(rv, childName)
	}
	return rv, nil
}

type bintree struct {
	Func     func() (*asset, error)
	Children map[string]*bintree
}

var _bintree = &bintree{nil, map[string]*bintree{
	"0001_capitan.down.sql": &bintree{_0001_capitanDownSql, map[string]*bintree{}},
	"0001_capitan.up.sql":   &bintree{_0001_capitanUpSql, map[string]*bintree{}},
}}

// RestoreAsset restores an asset under the given directory
func RestoreAsset(dir, name string) error {
	data, err := Asset(name)
	if err != nil {
		return err
	}
	info, err := AssetInfo(name)
	if err != nil {
		return err
	}
	err = os.MkdirAll(_filePath(dir, filepath.Dir(name)), os.FileMode(0755))
	if err != nil {
		return err
	}
	err = ioutil.WriteFile(_filePath(dir, name), data, info.Mode())
	if err != nil {
		return err
	}
	err = os.Chtimes(_filePath(dir, name), info.ModTime(), info.ModTime())
	if err != nil {
		return err
	}
	return nil
}

// RestoreAssets restores an asset under the given directory recursively
func RestoreAssets(dir, name string) error {
	children, err := AssetDir(name)
	// File
	if err != nil {
		return RestoreAsset(dir, name)
	}
	// Dir
	for _, child := range children {
		err = RestoreAssets(dir, filepath.Join(name, child))
		if err != nil {
			return err
		}
	}
	return nil
}

func _filePath(dir, name string) string {
	cannonicalName := strings.Replace(name, "\\", "/", -1)
	return filepath.Join(append([]string{dir}, strings.Split(cannonicalName, "/")...)...)
}
