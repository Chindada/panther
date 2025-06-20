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

var __0001_capitanDownSql = []byte("\x1f\x8b\x08\x00\x00\x00\x00\x00\x00\xff\x8c\xcd\xbd\x0e\xc2\x20\x14\x06\xd0\x9d\xa7\xe0\x3d\x98\xac\xa2\x21\xb1\xd6\x58\x06\x37\x82\x04\xf5\xfa\xc3\x6d\xbc\x1f\x26\xbe\xbd\x83\x73\x89\xfb\x49\x4e\x67\x37\x6e\x67\xd4\xea\x30\xec\xb5\x5f\x74\x5b\xab\xdd\x5a\xdb\xa3\x1b\xfd\xa8\xe5\x23\xc8\xcf\x90\xdf\xb9\x20\xc8\x95\x38\xde\xe8\x1f\xfa\xe0\x0b\x95\x36\x8c\x29\x71\x2d\x68\x23\x30\xa6\x19\x71\x8a\x42\x29\xf0\x04\xe2\xb9\xe9\x47\xce\x15\xf5\x95\x9b\x44\xc0\xe9\x6e\xd4\x72\xe8\x7b\xe7\x8d\x52\xdf\x00\x00\x00\xff\xff\xb1\x9b\x2b\x04\x13\x01\x00\x00")

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

	info := bindataFileInfo{name: "0001_capitan.down.sql", size: 275, mode: os.FileMode(420), modTime: time.Unix(1750410493, 0)}
	a := &asset{bytes: bytes, info: info}
	return a, nil
}

var __0001_capitanUpSql = []byte("\x1f\x8b\x08\x00\x00\x00\x00\x00\x00\xff\xdc\x94\xcd\x8e\xda\x30\x10\xc7\xef\x3c\x85\x95\x53\x57\xea\x1b\xec\x29\xbb\x98\x0a\x35\x84\x16\xc2\x61\x4f\xd6\xe0\x0c\x30\x25\xb1\x53\x7b\xc2\x36\x7d\xfa\x2a\x10\xda\x85\xc6\x81\x4a\x3d\xed\x85\x8b\x7f\x36\xf3\xff\xc8\x3c\xc9\x4f\xd3\xf4\x71\xf4\xbc\x90\x71\x26\x45\x16\x3f\x25\x52\xac\xc1\x93\x56\x9e\xad\xde\x7f\x18\x09\x21\x44\xa4\x6d\x8e\x91\x38\x80\xd3\x3b\x70\xe2\xcb\x62\x3a\x8b\x17\x2f\xe2\xb3\x7c\xf9\x78\x3a\x37\x50\xbe\x39\x4f\xe7\x99\x48\x57\x49\xd2\x1d\xe2\x0f\xbd\x03\xb3\x0d\x03\x1a\x18\xb7\xd6\x35\x41\x20\x87\x46\xb1\x83\x76\x86\xb5\xb5\x05\x82\xb9\x26\x0a\xf0\xac\x74\x61\x3d\x46\x62\x2c\x9f\xa7\xb3\x38\xb9\x46\xea\x2a\x07\x46\xd5\xfe\x44\x82\xa9\x44\xcf\x50\x56\xfc\xf3\x37\x37\x7a\xe8\xf5\x61\x53\x73\xed\xf0\x4e\x23\x7c\x53\xae\x6d\x11\x14\x32\xe8\xd3\x6d\x1b\xb0\xa0\x03\xba\x46\x95\xd6\xf0\xee\x36\x16\x96\x7a\xb6\xc4\xe4\xe8\x8a\x86\xcc\x56\xed\xc9\xe4\xc1\x17\x6b\x43\x1c\x09\x32\xfc\x97\xed\x54\x12\xab\xba\x0a\x9a\x7e\x02\x72\xfb\x6a\x82\x88\xc3\x0d\x3a\x34\xfa\xff\x27\x67\x2b\x26\x6b\xde\x65\x72\x9e\x1d\xed\x51\x55\x8e\x06\x7c\x3b\xe9\x57\x8e\xb6\x3b\x1e\xc8\xf6\x9d\x76\xc0\x37\x9e\xb1\x54\x6c\xb9\xea\x2a\x40\x79\x24\x3c\x3a\x82\xa2\x2f\x7f\xd4\x0e\x7b\x6c\x12\xab\x74\xfa\x75\x25\x3b\xea\xbb\x53\x97\x45\xba\xc2\x42\x53\x80\xd6\xb6\x36\x7c\xcf\x20\x58\x02\xf5\xf4\xf0\x72\x8e\xda\xa3\xeb\xaf\xe4\x25\x57\x81\xf7\xaf\xd6\x85\x63\x75\xb6\xc0\xde\x58\xd1\xc0\xba\xc0\xa3\x7d\x7f\xb6\xee\x58\x4e\xe2\x55\x92\x89\x49\x9c\x2c\xcf\x7f\xd1\x12\xaa\x55\xd4\x3e\xb2\x90\x13\xb9\x90\xe9\xb3\x5c\x5e\xf8\xdf\x2a\x7e\x10\xf3\x54\x8c\x65\x22\x33\x29\x96\xb2\x1b\xf6\xfc\xe0\xdb\x8f\xc9\x21\x30\xe6\x0a\x78\x78\x77\x1d\x0b\x11\xc6\x42\x49\xe0\x01\x0d\xab\xc2\x6e\xc9\xdc\x93\x46\x17\xdc\x80\xc0\x73\xb4\xff\xa2\x91\xaa\x70\x20\xe8\xab\xae\x63\x3d\xa9\xdc\x32\x67\x58\xb5\xdf\x91\x85\x6f\x74\x57\x0b\x8f\x17\x82\x73\xb4\x53\x5a\xe3\x03\xd5\x69\xef\x06\x05\x92\xd9\xd8\xf0\x26\xbd\x47\xdf\x7c\x36\x9b\x66\x8f\xa3\xd1\xaf\x00\x00\x00\xff\xff\xe0\x13\x19\x80\xbc\x08\x00\x00")

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

	info := bindataFileInfo{name: "0001_capitan.up.sql", size: 2236, mode: os.FileMode(420), modTime: time.Unix(1750410490, 0)}
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
