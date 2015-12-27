#!/bin/bash

docker-compose stop

sleep 3

docker-compose up --no-recreate -d

docker-compose ps
