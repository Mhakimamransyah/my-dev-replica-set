#!/bin/bash

DELAY=10

echo "****** RUN DOCKER COMPOSE ******"

docker-compose --file docker-compose-mongo.yaml down -d

docker rm -f $(docker ps -a -q)

docker volume rm $(docker volume ls -q)

docker-compose --file docker-compose-mongo.yaml up -d

echo "****** Waiting for ${DELAY} seconds for containers to go up ******"

sleep $DELAY

docker exec mongo1 /scripts/rs-init.sh
