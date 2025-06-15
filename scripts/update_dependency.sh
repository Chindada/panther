#!/bin/bash
set -e

rm -rf node_modules
rm -rf package-lock.json

npm i
npm i -g @protobuf-ts/plugin
npm i -g npm-check-updates
ncu --peer -u

npm install

git add package.json
git add package-lock.json
