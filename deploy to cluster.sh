#!/usr/bin/env bash


#get nodes status
kubectl get nodes
#pull image from dockerhub
docker pull same7abdel3aziz/udacity:0.1
#create deplyments
kubectl apply -f kubernetes/deployment.yaml
#get deployment status
kubectl get deployments
