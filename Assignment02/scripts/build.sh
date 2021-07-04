#!/bin/bash

echo Start building the second assignment of Kakao...

REPOSITORY_URI="localhost:5000/assignment02"


# Hash generation for tag value
COMMIT_HASH=$(echo $(($(date +%s%N)/1000000)) | md5sum | cut -c 1-7)
IMAGE_TAG=${COMMIT_HASH:=latest}


# Check if cache image exists
if docker manifest inspect ${REPOSITORY_URI}:latest > /dev/null; then

    # Get cache image if it exists(To improve build performance)
    docker pull ${REPOSITORY_URI}:latest || true
fi


# Building the Docker image
echo Build started on `date`
echo Building the Docker image...

docker build -t ${REPOSITORY_URI}:latest --cache-from ${REPOSITORY_URI}:latest -f Dockerfile.prod .
docker tag ${REPOSITORY_URI}:latest ${REPOSITORY_URI}:${IMAGE_TAG}


echo Build completed on `date`


# Pushing the Docker images
echo Pushing the Docker images...

docker push ${REPOSITORY_URI}:latest
docker push ${REPOSITORY_URI}:${IMAGE_TAG}