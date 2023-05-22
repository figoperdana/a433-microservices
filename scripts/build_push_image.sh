#!/bin/bash

docker build -t item-app:v1 .
docker image ls
docker tag item-app:v1 figoperdana/item-app:v1
docker login
docker push figoperdana/item-app:v1