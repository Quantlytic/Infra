#!/bin/bash

echo "Starting Minikube with ingress and mounts..."
minikube start \
  --mount \
  --mount-string="/mnt/k8s-data:/mnt/k8s-data" \
  --mount-string="/minio.env:/minio.env"

echo "Enabling ingress..."
minikube addons enable ingress

echo "Starting tunnel in background..."
minikube tunnel &
