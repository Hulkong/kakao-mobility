#!/bin/bash

echo Logging in to Amazon ECR...
aws --version

$(aws ecr get-login --region $AWS_DEFAULT_REGION --no-include-email)

COMMIT_HASH=$(echo $CODEBUILD_RESOLVED_SOURCE_VERSION | cut -c 1-7)
IMAGE_TAG=${COMMIT_HASH:=latest}

# pre build
docker pull ${REPOSITORY_URI}:builder || true
docker build -t ${REPOSITORY_URI}:builder --target build --cache-from ${REPOSITORY_URI}:builder -f Dockerfile.prod .

# build
echo Build started on `date`
echo Building the Docker image...

docker pull ${REPOSITORY_URI}:latest || true
docker build -t ${REPOSITORY_URI}:latest --cache-from ${REPOSITORY_URI}:builder --cache-from ${REPOSITORY_URI}:latest -f Dockerfile.prod .
docker tag ${REPOSITORY_URI}:latest ${REPOSITORY_URI}:${IMAGE_TAG}
docker tag ${REPOSITORY_URI}:builder ${REPOSITORY_URI}:builder-${IMAGE_TAG}

# post build
echo Build completed on `date`
echo Pushing the Docker images...

docker push ${REPOSITORY_URI}:latest
docker push ${REPOSITORY_URI}:${IMAGE_TAG}
docker push ${REPOSITORY_URI}:builder
docker push ${REPOSITORY_URI}:builder-${IMAGE_TAG}