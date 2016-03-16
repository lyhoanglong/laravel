#!/usr/bin/env bash
docker-compose build
docker-compose run php php bin/composer install
docker-compose run node npm install
docker-compose run php php artisan migrate
docker-compose rm -f web
docker-compose rm -f php
docker-compose rm -f node
docker-compose rm -f db
docker-compose rm -f redis
docker-compose up -d


# docker ps -a | grep 'appstore' | awk '{print $1}' | xargs --no-run-if-empty docker rm
# docker-compose build web
# docker-compose up --no-deps -d web
