# PANTHER

## VScode settings

```sh
mkdir -p .vscode
protoc_path=$(which protoc)
echo '{
    "protoc": {
        "path": "'$protoc_path'",
        "compile_on_save": false,
        "options": [
            "--proto_path=protos/v1",
            "--python_out=src/python",
            "--go_out=src/go"
        ]
    }
}' > .vscode/settings.json
```
