#! /bin/bash

PLANKA_DOCKER_IMAGE="gitea.9914.us/xbigtk13x/planka"

set -e
docker build -t $PLANKA_DOCKER_IMAGE .
set +e

if [ ! -z $1 ]; then
  docker push $PLANKA_DOCKER_IMAGE
fi
