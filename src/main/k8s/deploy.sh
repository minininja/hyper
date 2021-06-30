#!/bin/bash

# todo: would be much better to do this with a helm chart
kubectl delete namespace sawtooth --wait=true
kubectl create namespace sawtooth
kubectl apply -f sawtooth-kubernetes-default-poet.yaml -n sawtooth
