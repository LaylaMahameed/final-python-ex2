#!/bin/bash
# Stop execution if any command fails
set -e

# Update system
sudo apt-get update

# Install Docker if it isn't installed
if ! [ -x "$(command -v docker)" ]; then
    echo "Installing Docker..."
    sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    sudo apt-get update
    sudo apt-get install -y docker-ce
fi

# Ensure Docker service is running
sudo systemctl start docker
sudo systemctl enable docker

echo "Dependencies installed successfully."
