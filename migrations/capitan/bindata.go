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

var __0001_capitanDownSql = []byte("\x1f\x8b\x08\x00\x00\x00\x00\x00\x00\xff\x72\x72\x75\xf7\xf4\xb3\xe6\x72\x09\xf2\x0f\x50\x08\x71\x74\xf2\x71\x55\xf0\x74\x53\x70\x8d\xf0\x0c\x0e\x09\x56\x28\xae\x2c\x2e\x49\xcd\x8d\x4f\x2d\x4b\xcd\x2b\x89\xcf\xc9\x4f\xcf\xcc\xc3\xaf\x30\x31\x39\x39\xbf\x34\xaf\x04\xbf\xa2\x92\xfc\x92\x02\x1c\x2a\x92\x12\x8b\x33\x93\xe3\xf3\x0b\x4a\x32\xf3\x71\xd9\x04\x51\x92\x56\x5a\x52\x5a\x94\x8a\x57\x49\x71\x49\x7e\x72\xb6\x35\x97\xb3\xbf\xaf\xaf\x67\x88\x35\x17\x17\x20\x00\x00\xff\xff\x9e\xd1\xa4\x71\xe8\x00\x00\x00")

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

	info := bindataFileInfo{name: "0001_capitan.down.sql", size: 232, mode: os.FileMode(420), modTime: time.Unix(1750355801, 0)}
	a := &asset{bytes: bytes, info: info}
	return a, nil
}

var __0001_capitanUpSql = []byte("\x1f\x8b\x08\x00\x00\x00\x00\x00\x00\xff\xdc\x94\xcd\x8e\xda\x30\x10\xc7\xef\x3c\xc5\x28\xa7\xae\xd4\x37\xd8\x53\x16\x4c\x15\x35\x84\x16\x82\xd4\x3d\x59\xc6\x99\x05\x0b\xc7\x4e\xed\x09\xdb\xf4\xe9\xab\x40\x68\x17\x1a\x87\x54\xea\x69\x2f\x5c\xe6\xa7\x61\xfe\x1f\xf1\x13\xfb\x94\x64\x8f\x93\xe9\x8a\xc5\x39\x83\x3c\x7e\x4a\x19\x6c\x85\x57\x92\x7b\xb2\xf2\xf0\x61\x02\x00\x10\x49\x5b\x60\x04\x47\xe1\xe4\x5e\x38\xf8\xb2\x4a\x16\xf1\xea\x19\x3e\xb3\xe7\x8f\xe7\xb9\x11\xe5\x9b\x79\xb6\xcc\x21\xdb\xa4\x69\x37\xc4\x1f\x72\x2f\xcc\x2e\x0c\x48\x41\xb8\xb3\xae\x09\x02\x85\x68\x38\x39\xd1\xde\xb0\xb5\x56\xa3\x30\xb7\x84\x16\x9e\xb8\xd4\xd6\x63\x04\x33\x36\x4d\x16\x71\x7a\x8b\xd4\x55\x21\x08\x79\xfb\x13\x01\xa9\x12\x3d\x89\xb2\xa2\x9f\xbf\xb9\xc9\x43\xaf\x0f\x2f\x35\xd5\x0e\x47\x1a\xe1\x9b\x72\x6b\x75\x50\xc8\xa0\x4f\xf7\x6d\x40\xad\x8e\xe8\x1a\x5e\x5a\x43\xfb\xfb\x58\x58\xea\xc5\x12\x53\xa0\xd3\x8d\x32\x3b\x7e\x50\xa6\x08\x6e\xac\x8d\xa2\x08\x94\xa1\xbf\x6c\x57\xa5\x22\x5e\x57\x41\xd3\xcf\x40\x61\x5f\x4d\x10\x71\xf8\x82\x0e\x8d\xfc\xff\xc9\xd9\x8a\x94\x35\xef\x32\x39\x4f\x4e\x1d\x90\x57\x4e\x0d\xf8\x76\xd6\xcf\x9d\xda\xed\x69\x20\xdb\x77\xda\x81\x64\x7e\x9a\xb1\x6f\xc9\x3a\x5f\x83\x6f\x3c\x61\xc9\xc9\x52\xd5\x15\x42\x15\x11\x78\x74\x4a\xe8\xbe\x36\xa0\x74\xd8\x63\x1a\x6c\xb2\xe4\xeb\x86\x75\xd4\x77\xc7\xaf\x6b\x75\x83\x8d\xbb\x49\x48\x69\x6b\x43\x63\xce\xc2\x52\xa8\x9e\x8e\x5e\x5f\x55\x7b\x74\xfd\x75\xbd\xe6\x2a\xe1\xfd\xab\x75\xe1\xc8\x9d\xd5\xd8\x1b\x39\x1a\xb1\xd5\x78\x32\xf3\xcf\x8b\x3c\x63\xf3\x78\x93\xe6\x30\x8f\xd3\xf5\xe5\x2f\x5a\x82\xb7\x8a\xda\x25\x2b\x36\x67\x2b\x96\x4d\xd9\x75\x1a\xad\xe2\x07\x58\x66\x30\x63\x29\xcb\x19\xac\x59\x77\xec\x65\xe1\xdb\x0f\xcd\xa1\x20\x2c\xb8\xa0\xe1\x77\xed\x54\x96\x30\x36\x2e\x17\x3c\xa2\x21\xae\xed\x4e\x99\x31\xd9\x74\x31\x0e\xc8\xbd\x04\xfd\x2f\x8a\x55\x15\x8e\x07\x7d\xd5\xf5\xaf\x27\xa3\x7b\x56\x9d\x3c\x58\x2e\x16\x49\xfe\x38\x99\xfc\x0a\x00\x00\xff\xff\xa5\xfd\x1f\xad\x06\x08\x00\x00")

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

	info := bindataFileInfo{name: "0001_capitan.up.sql", size: 2054, mode: os.FileMode(420), modTime: time.Unix(1750355804, 0)}
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
