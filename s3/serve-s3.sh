#!/bin/bash

source config

DOCKER_IMAGE=${REGISTRY_IMAGE:=pulkitvaishnav/aws-nginx}

docker pull $DOCKER_IMAGE # Pull the docker image from source
 
docker_id=$(docker run -di -p 80:80 $DOCKER_IMAGE) # Run the container
# Copy files from S3 to docker.
docker exec -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY -it $docker_id  aws s3 cp $S3_BUCKET_NAME /usr/share/nginx/html --recursive