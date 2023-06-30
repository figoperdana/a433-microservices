#!/bin/bash

docker build -t karsajobs:latest .
docker image ls
docker tag karsajobs:latest ghcr.io/figoperdana/karsajobs:latest

# need variable CR_PAT, it can be get from github personal access token
# echo $secrets.GHCR_TOKEN | docker login ghcr.io -u figoperdana --password-stdin
# echo "$GHCR_TOKEN" | docker login ghcr.io -u "figoperdana" --password-stdin
# docker login ghcr.io -u figoperdana -p $secrets.GHCR_TOKEN
docker login ghcr.io -u figoperdana -p $GHCR_TOKEN

docker push ghcr.io/figoperdana/karsajobs:latest