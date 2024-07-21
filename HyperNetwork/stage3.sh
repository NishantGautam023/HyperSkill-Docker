#!/usr/bin/env bash

# create the network hyper-network
docker network create hyper-network


# Run the container

docker run --rm --name hyper-adminer \
  -p 8080:8080 \
  --network hyper-network \
  -d adminer:4.8.1