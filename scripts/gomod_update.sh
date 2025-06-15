#!/bin/bash

rm go.mod
rm go.sum

go mod init chindada/panther
go mod tidy

git add go.mod go.sum
