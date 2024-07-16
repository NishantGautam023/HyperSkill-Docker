#!/usr/bin/env bash

# Build the Docker image
docker build -t hyper-web-app .

# Run the Docker container
docker run -d --name hyper-web-app -p 8000:8000 hyper-web-app