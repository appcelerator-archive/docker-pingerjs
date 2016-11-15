#!/bin/bash
# Runs pingerjs in a container
#
docker run -it --rm -p 3000:3000 --name pingerjs appcelerator/pingerjs
