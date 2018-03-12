#!/bin/sh
GREEN='\033[0;32m'
NC='\033[0m'

printf "${GREEN}\n[Test] check right version is installed\n${NC}"
docker run --rm ${DOCKER_IMAGE_VERSION_NAME} --version
