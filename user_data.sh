#!/bin/bash

sudo yum update
sudo yum install docker -y
sudo systemctl start docker
sudo usermod -a -G docker ec2-user
id ec2-user
newgrp docker
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
mkdir config