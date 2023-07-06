#!/bin/bash


# Membuat image Docker dengan nama "order-service" dan tag "latest" dari Dockerfile di direktori saat ini
docker build -t order-service:latest .

# Menampilkan daftar image Docker yang ada di komputer lokal Anda
docker image ls

# Jadi dalam hal ini, kita membuat tag dengan hostname "ghcr.io", user "figoperdana", dan repository "order-service"
docker tag order-service:latest ghcr.io/figoperdana/order-service:latest

# Melakukan login ke GitHub Container Registry (ghcr.io) menggunakan username "figoperdana" dan token autentikasi dari env $GHCR_TOKEN
docker login ghcr.io -u figoperdana -p $GHCR_TOKEN

# Melakukan push image Docker dengan tag "ghcr.io/figoperdana/order-service:latest" ke GitHub Container Registry (ghcr.io)
docker push ghcr.io/figoperdana/order-service:latest