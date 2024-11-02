#!/bin/bash

# Update system
apt-get update
apt-get upgrade -y

# Install docker/docker-compose
apt-get install docker.io docker-compose -y
usermod -aG docker $USER

docker-compose up -d