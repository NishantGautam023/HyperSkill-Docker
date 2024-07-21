#!/usr/bin/env bash

# Create the Docker network
docker network create hyper-network

# create the Docker volume
docker volume create hyper-volume

# Run the Postgres Container

docker run --name hyper-postgres \
  -e POSTGRES_PASSWORD=hyper2023 \
  -e POSTGRES_USER=hyper \
  -e POSTGRES_DB=hyper-db \
  -p 5432:5432 \
  --network hyper-network \
  -v hyper-volume:/var/lib/postgresql/data \
  -d postgres:15.3
