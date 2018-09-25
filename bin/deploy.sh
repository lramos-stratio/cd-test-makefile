#!/bin/bash

echo "Mock deploying"

echo "Docker host: ${DOCKER_HOST}"

VER=$1
echo "Modifying Schema versions in deploy to: $VER"
