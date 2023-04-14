#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=vasudevla/ml-app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy ml-app --image=vasudevla/ml-app:v1.0.0

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/ml-app-77d7767ff9-mhrl9 --address 0.0.0.0 8000:80

