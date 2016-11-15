#!/bin/bash
# Publishes pingerjs to docker hub
#
docker push appcelerator/pingerjs:latest \
	&& docker push appcelerator/pingerjs:$(cat VERSION | sed 's/[:space:]*$//')

