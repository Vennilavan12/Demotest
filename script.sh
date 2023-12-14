#!/bin/bash
echo "Hello"
echo "This is Jenkins"
docker images
docker info
docker ps
docker stop $(docker ps -a -q)
docker pull vennilavan/dev:latest
docker images
docker run -d -p 80:3000 vennilavan/dev:latest
