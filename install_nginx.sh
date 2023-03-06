#!/bin/bash

# Update the package list
sudo apt-get update

# Install Nginx
sudo apt-get install -y nginx

# Start Nginx and enable it to start automatically on boot
sudo systemctl start nginx
sudo systemctl enable nginx

# Allow incoming traffic to port 80
sudo ufw allow 80/tcp

# Display the status of Nginx
sudo systemctl status nginx
