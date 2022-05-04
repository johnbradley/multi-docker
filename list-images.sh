#!/usr/bin/env bash

IMAGE_PREFIX=docker://ghcr.io/johnbradley

FILES=$(find * -name Dockerfile)
for FILE in $FILES
do
   IMAGE=$IMAGE_PREFIX/$(dirname $FILE | sed -e 's/\//:/')
   echo $IMAGE
done

cat external-images.txt
