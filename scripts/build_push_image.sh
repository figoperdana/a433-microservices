#!/bin/bash

docker build -t item-app:v1 .
docker image ls
docker tag item-app:v1 dafit17docker/item-app:v1
docker login
docker push dafit17docker/item-app:v1