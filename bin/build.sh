#!/bin/bash
# Build an alpine-based image for the node app.
#
set -e
docker build -t appcelerator/pingerjs . \
	&& docker tag appcelerator/pingerjs appcelerator/pingerjs:$(cat VERSION | sed 's/[:space:]*$//')

