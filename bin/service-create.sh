#!/bin/bash
# Runs pingerjs as a service (assumes host is a swarm manager), ie:
# docker swarm init
#
docker service create -p 3000:3000 --name pingerjs appcelerator/pingerjs
