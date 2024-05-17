#!/bin/bash

# Set timezone to Asia/Jakarta
timedatectl set-timezone Asia/Jakarta

# Update & upgrade packages
sudo apt update
sudo apt upgrade -y

# Install required packages: Git, Curl, ZIP, Python3 & Python3-pip
sudo apt install -y git curl zip python3 python3-pip

# Install Docker
# Update the apt package index
sudo apt-get update

# Install packages to allow apt to use a repository over HTTPS
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Set up the Docker stable repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update the apt package index
sudo apt-get update

# Install the latest version of Docker CE
sudo apt-get install -y docker-ce

# Docker should now be installed, the daemon started, and the process enabled to start on boot. 
# Check that it’s running:
sudo systemctl status docker

