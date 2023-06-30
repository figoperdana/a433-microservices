#!/bin/bash

docker build -t karsajobs-ui:latest .
docker image ls
docker tag karsajobs-ui:latest ghcr.io/figoperdana/karsajobs-ui:latest

# need variable CR_PAT, it can be get from github personal access token
# echo $secrets.GHCR_TOKEN | docker login ghcr.io -u figoperdana --password-stdin
# echo "$GHCR_TOKEN" | docker login ghcr.io -u "figoperdana" --password-stdin
# docker login ghcr.io -u figoperdana -p $secrets.GHCR_TOKEN
docker login ghcr.io -u figoperdana -p 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

docker push ghcr.io/figoperdana/karsajobs-ui:latest