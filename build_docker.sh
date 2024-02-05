#!/bin/sh

pip install poetry-plugin-export

DOCKER_IMAGE=${1:-orp_docker}

echo "Building docker image: $DOCKER_IMAGE"


poetry export --without-hashes --format=requirements.txt > requirements.txt
# docker build -t orp_docker .  

docker image rm $DOCKER_IMAGE || (echo "Image $DOCKER_IMAGE didn't exist so not removed."; exit 0)
docker build -t $DOCKER_IMAGE .