#!/bin/bash
sudo yum -y update && yum -y upgrade
sudo yum install -y docker
sudo systemctl start docker
sudo usermod -aG docker ec2-user
docker run -p 8080:8080 nginx