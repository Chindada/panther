#!/bin/bash

rm go.mod
rm go.sum

go install github.com/go-bindata/go-bindata/...@latest
go install -tags 'postgres' github.com/golang-migrate/migrate/v4/cmd/migrate@latest

go mod init github.com/chindada/panther
go mod tidy

git add go.mod go.sum
