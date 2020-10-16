#!/bin/sh
docker login -u $DOCKER_USER -p $DOCKER_PASS
if [ "$TRAVIS_BRANCH" = "master" ]; then
    TAG="latest"
else
    TAG="feature"
fi
REPO="/cicd-buzz"
docker build -f Dockerfile -t $DOCKER_USER$REPO:$TAG .
docker push $DOCKER_USER$REPO:$TAG 