#!/bin/bash
echo "Hello"
echo "This is Jenkins"
docker images
docker info
docker ps
docker pull vennilavan/dev:latest
docker images
docker run -d -p 80:80 vennilavan/dev:latest
