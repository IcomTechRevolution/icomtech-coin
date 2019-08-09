#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-icomtechpay/icomtechd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/icomtechd docker/bin/
cp $BUILD_DIR/src/icomtech-cli docker/bin/
cp $BUILD_DIR/src/icomtech-tx docker/bin/
strip docker/bin/icomtechd
strip docker/bin/icomtech-cli
strip docker/bin/icomtech-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
