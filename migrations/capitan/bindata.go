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

var __0001_capitanUpSql = []byte("\x1f\x8b\x08\x00\x00\x00\x00\x00\x00\xff\xdc\x94\xbd\x92\xda\x30\x10\xc7\x7b\x9e\x42\xe3\x2a\x37\x93\x37\xb8\xca\x07\x22\xc3\xc4\x98\x04\x4c\x71\x95\x66\xb1\x17\xb3\xc1\x96\x1c\x69\xcd\xc5\x79\xfa\x8c\xc1\x24\x07\xb1\x0c\xb9\x49\x75\x8d\x1b\xfd\x24\xef\xff\x43\x7a\x92\x9f\x66\xf1\xe3\x68\xbc\x94\x61\x22\x45\x12\x3e\x45\x52\x6c\xc0\x51\xaa\x1c\x9b\x74\xff\x61\x24\x84\x10\x41\x6a\x32\x0c\xc4\x01\x6c\xba\x03\x2b\xbe\x2c\x67\xf3\x70\xf9\x2c\x3e\xcb\xe7\x8f\xa7\x75\x0d\xe5\xab\xf5\x78\x91\x88\x78\x1d\x45\xdd\x22\xfe\x48\x77\xa0\x73\x3f\x90\x02\x63\x6e\x6c\xe3\x05\x32\x68\x14\x5b\x68\x67\xd8\x18\x53\x20\xe8\x6b\xa2\x00\xc7\x2a\x2d\x8c\xc3\x40\x4c\xe4\x78\x36\x0f\xa3\x6b\xa4\xae\x32\x60\x54\xed\x27\x10\x4c\x25\x3a\x86\xb2\xe2\x9f\xbf\xb9\xd1\x43\xaf\x0f\xdb\x9a\x6b\x8b\x77\x1a\xe1\x9a\x72\x63\x0a\xaf\x90\x41\x9f\x6e\xdb\x80\x05\x1d\xd0\x36\xaa\x34\x9a\x77\xb7\x31\xbf\xd4\xb3\x25\x3a\x43\x5b\x34\xa4\x73\xb5\x27\x9d\x79\x4f\xac\x35\x71\x20\x48\xf3\x5f\xb6\x53\x49\xac\xea\xca\x6b\xfa\x09\xc8\xcc\x8b\xf6\x22\x16\xb7\x68\x51\xa7\xff\x3f\x39\x53\x31\x19\xfd\x2e\x93\x73\x6c\x69\x8f\xaa\xb2\x34\xe0\xdb\x49\xbf\xb2\x94\xef\x78\x20\xdb\x77\xda\x01\xd7\x38\xc6\x52\xb1\xe1\xaa\xab\x00\x65\x81\x70\x68\x09\x8a\xbe\xfc\x31\xb5\xd8\x63\x93\x58\xc7\xb3\xaf\x6b\xd9\x51\xdf\xad\xba\x2c\xd2\x15\xe6\x9b\x02\xd2\xd4\xd4\x9a\xef\x19\x04\x4b\xa0\x9e\x1e\x5e\xce\x51\x3b\xb4\xfd\x95\xbc\xe4\x2a\x70\xee\xc5\x58\x7f\xac\xd6\x14\xd8\x1b\x2b\x6a\xd8\x14\x78\xb4\xef\xcf\xab\x3b\x91\xd3\x70\x1d\x25\x62\x1a\x46\xab\xf3\x2f\x5a\x42\xb5\x8a\xda\x43\x96\x72\x2a\x97\x32\x1e\xcb\xd5\x85\xff\xad\xe2\x07\xb1\x88\xc5\x44\x46\x32\x91\x62\x25\xbb\x61\xcf\x07\xbe\xbe\x4c\x16\x81\x31\x53\xc0\xc3\x6f\xd7\xb1\x10\x7e\xcc\x97\x04\x1e\x50\xb3\x2a\x4c\x4e\xfa\x9e\x34\xba\xe0\x06\x04\x9e\xa3\xfd\x17\x8d\x54\xf9\x03\x41\x57\x75\x1d\xeb\x49\xe5\x96\x39\xc3\xaa\xdd\x8e\x0c\x7c\xa3\xbb\x5a\x78\xdc\xe0\x9d\xa3\x9d\xd2\x68\xe7\xa9\x4e\xbb\xd7\x2b\x90\xf4\xd6\xf8\x5f\xd2\x37\xea\x73\xc8\x4c\x3a\xef\x94\xed\xb1\x39\x0d\xd6\x77\xcd\x8f\x60\x20\x36\x0d\x23\xbc\xa9\x54\x8b\xf9\x7c\x96\x3c\x8e\x46\xbf\x02\x00\x00\xff\xff\x08\x99\x6e\x16\x3b\x09\x00\x00")

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

	info := bindataFileInfo{name: "0001_capitan.up.sql", size: 2363, mode: os.FileMode(420), modTime: time.Unix(1750431160, 0)}
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
