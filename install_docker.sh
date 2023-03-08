#!/bin/bash

# Install Docker
sudo apt-get update
sudo apt-get install -y docker.io

# Start Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Run a simple container
sudo docker run hello-world
