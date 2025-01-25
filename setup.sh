#!/bin/bash

echo "Installing Docker..."
curl -sSL https://get.docker.com/ | CHANNEL=stable bash

echo "Installing Docker Compose..."
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "Downloading docker-compose.yaml file..."
wget https://raw.githubusercontent.com/gokhangunduz/FastRDP/main/docker-compose.yaml

echo "Starting Docker Compose..."
sudo docker-compose up -d

echo "Setup completed successfully!"
