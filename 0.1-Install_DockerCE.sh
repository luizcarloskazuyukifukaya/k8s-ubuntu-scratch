#!/bin/bash
#
# TARGET VM: MASTER AND WORKERS (ALL VMs)

# Add pgp key and the repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

# Install DockerCE
sudo apt-get install -y docker-ce=18.06.1~ce~3-0~ubuntu

# Prevent update
sudo apt-mark hold docker-ce

# Verify DockerCE installation
sudo docker version
