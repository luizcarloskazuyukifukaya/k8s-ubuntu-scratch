#!/bin/bash

# TARGET : MASTER ONLY

# Init with kubeadm
# CIDR is 10.244.0.0/16
sudo kubeadm init --pod-network-cidr=10.244.0.0/16

# Basically should follow the instruction given in the console based on the kubeadm init execution.

# setup master
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# Verify master cluster
kubectl version
