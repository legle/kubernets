#!/usr/bin/bash
echo "Installing Kind Cluster..."
kind create cluster --config=./kind/config.yaml
echo "Appling Nginx.."
kubectl apply -k ./Base/nginx
echo "Appling Tekton tools..."
kubectl apply -k ./Base/tekton