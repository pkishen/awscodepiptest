#!/bin/bash
mkdir ~/code
git clone https://github.com/sysgain/km-docker-nodejs.git /home/pkishen/code
cd ~/code
COMPOSE_HTTP_TIMEOUT=180 sudo docker-compose up
sudo docker-compose up
