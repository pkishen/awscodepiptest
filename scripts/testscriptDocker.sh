#!/bin/bash

git clone https://github.com/sysgain/km-docker-nodejs.git
cd km-docker-nodejs
COMPOSE_HTTP_TIMEOUT=240 sudo docker-compose up
