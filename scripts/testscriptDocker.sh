#!/bin/bash
mkdir ~/km-docker-nodejs
git clone https://github.com/sysgain/km-docker-nodejs.git /home/pkishen/km-docker-nodejs
cd ~/km-docker-nodejs
COMPOSE_HTTP_TIMEOUT=180 sudo docker-compose up
sudo docker-compose up
