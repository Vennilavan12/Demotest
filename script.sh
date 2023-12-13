#!/bin/bash
echo "Hello"
echo "This is Jenkins"
docker images
docker info
docker ps
docker pull nginx:alpine
docker images
docker tag nginx:alpine vennilavan/prod
docker login -u vennilavan -p dckr_pat_S24xwX_73dmdhHpTqKr-3UVNqds
docker push vennilavan/prod
