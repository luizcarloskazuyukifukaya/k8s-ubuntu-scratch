#!/bin/bash

# TARGET: MASTER ONLY

# Get nodes
kubectl get nodes

# How to verify
echo " kubectl get nodes STATUS should be 'Not Ready' at this point still."
echo " Next, please set Flannel for kubernetes internal virtual network."
