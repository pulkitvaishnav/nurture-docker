## Serve a Static site locally (using Nginx)


 1. Remove existing index.html from `static-site` directory.
 2. Copy your site code to `static-site` directory if you want to serve your site.
 3. Build docker image:
```
docker build -t <image-name>:<image-vesrion> . 
```
 4. Run Docker image:
 ```
 docker run -di -p 80:80 <image-name>:<image-vesrion>
 ```
 5. Open localhost and access your site on port 80.
