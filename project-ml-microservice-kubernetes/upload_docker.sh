#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=moustaphar/project4:v8

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag  moustaphar/project4:v8  moustaphar/project4:v9
docker login -u moustaphar -p $PASSWORD
# Step 3:
# Push image to a docker repository
docker push moustaphar/project4:v8
