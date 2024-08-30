#!/bin/bash

# Stop and remove any existing container
docker stop dev || true
docker rm dev || true

# Push the image to the dev repository
docker login -u sanjai06 -p "$DOCKER_PASS"
docker push sanjai06/dev:latest

# Run the new container
docker run -d --name dev -p 80:80 sanjai06/dev:latest
