#!/usr/bin/env bash


if [ "$1" == "composer" ];
then
  docker-compose run php php bin/composer $2 $3
  exit 0
elif [ "$1" == "npm" ]; then
  docker-compose run node npm $2 $3
elif [ "$1" == "artisan" ]; 
then
  docker-compose run php php artisan $2 $3 $4
  exit 0
fi  