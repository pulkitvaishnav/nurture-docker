## Build and push docker image to a registry

 * Build image from the local file:
 ```
 docker build -t <image-name>:<image-version> .
 ```

 * Tag the image appropriately:
 ```
 docker tag <image-name>:<image-version> <unique-identifier>/aws-nginx:latest
 ```

 
### To push the image to the Dockerhub (Registry)

* Login to the docker hub:
```
docker login -u <username> -p <password>
```

* Push build image to the registry:
```
docker push <unique-identifier>/aws-nginx
```

### To push the image to the AWS-ECR

https://docs.aws.amazon.com/AmazonECR/latest/userguide/docker-push-ecr-image.html