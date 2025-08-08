#!/bin/bash
set -e

kind create cluster --config cluster.yml

kubectl apply -f namespace.yml
kubectl apply -f mysql-secret.yml
kubectl apply -f mysql-initdb.yml
kubectl apply -f statefulSet.yml

kubectl apply -f app-secret.yml
kubectl apply -f deployment.yml