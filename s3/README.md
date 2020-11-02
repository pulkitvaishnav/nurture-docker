## Serve a Static site from AWS-S3 (using Nginx)

* Update `config` file with your AWS-access-key-id, AWS-secret, S3-bucket-URL and the custom image (if any else it will take the default image).
```
AWS_ACCESS_KEY_ID=<AWS-ACCESS-KEY> # Required
AWS_SECRET_ACCESS_KEY=<AWS-SECRET-KEY> # Required
S3_BUCKET_NAME=s3://<BUCKET-NAME> # REquired
REGISTRY_IMAGE=<if any> # Optional
```

* Run `serve-s3.sh`
```
bash serve-s3.sh
```

* Open localhost and access your site on port 80.


*Note:* Make sure to change the absolute and relative paths within the static code as per the S3 resources in the bucket. 
