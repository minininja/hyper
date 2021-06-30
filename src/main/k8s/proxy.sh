#!/bin/bash

# get the token for the dashboard
kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep admin-user | awk '{print $1}')
# proxy for the dashboard
kubectl proxy

