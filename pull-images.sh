#!/usr/bin/env bash

echo "Pulling images"
for IMAGE in $(./list-images.sh)
do
    singularity pull $IMAGE
done
echo "Done"
