#!/bin/env bash

echo "Building Dockerfiles: $@"

for DOCKERFILE in "$@"
do
    CONTEXT=$(dirname $DOCKERFILE)
    TAG=ghcr.io/johnbradley/$(echo $CONTEXT | sed -e 's/\//:/')
    docker build -t $TAG $CONTEXT
    docker push $TAG
done

echo "Done"
