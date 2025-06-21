#!/bin/bash

VERSION=v1.0
set -e

docker buildx build \
    -f Dockerfile \
    -t ghcr.io/chindada/panther:$VERSION .
docker system prune --volumes -f
