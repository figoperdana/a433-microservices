#!/bin/bash

# Membuat image Docker dengan nama "karsajobs-ui" dan tag "latest" dari Dockerfile di direktori saat ini
docker build -t karsajobs-ui:latest .

# Menampilkan daftar image Docker yang ada di komputer lokal Anda
docker image ls

# Jadi dalam hal ini, kita membuat tag dengan hostname "ghcr.io", user "figoperdana", dan repository "karsajobs-ui"
docker tag karsajobs-ui:latest ghcr.io/figoperdana/karsajobs-ui:latest

# Melakukan login ke GitHub Container Registry (ghcr.io) menggunakan username "figoperdana" dan token autentikasi dari variabel lingkungan $GHCR_TOKEN
docker login ghcr.io -u figoperdana -p $GHCR_TOKEN

# Melakukan push image Docker dengan tag "ghcr.io/figoperdana/karsajobs-ui:latest" ke GitHub Container Registry (ghcr.io)
docker push ghcr.io/figoperdana/karsajobs-ui:latest