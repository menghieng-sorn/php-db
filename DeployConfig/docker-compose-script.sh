#!/usr/bin/env bash
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -sf /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo DOCKER_IMAGE=$1 DB_IMAGE=$2 docker-compose -f /home/ec2-user/DeployConfig/docker-compose.yml up -d
