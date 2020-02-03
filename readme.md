# Fargate solution

This Docker container was inpired by the article [How to use AWS Fargate and Lambda for long-running processes in a Serverless app](https://serverless.com/blog/serverless-application-for-long-running-process-fargate-lambda/) 



Thank you so much [@rupakg](https://github.com/rupakg) it was a great article.

    Derived from the base [jrottenberg/ffmpeg](https://hub.docker.com/r/jrottenberg/ffmpeg/) docker image, this image encapsulates the creation of a thumbnail image from a video file.

## Usage
This docker container was created for a specific case that we've, it will run the main which is a golang app that process videos with some specific features.


## Building the image
```$ docker build -t encoder:v1 . -f Dockerfile```


## Running locally 

<pre><code>
$ docker run \
    -e AWS_ACCESS_KEY_ID='' \
    -e AWS_SECRET_ACCESS_KEY='' \
    -e S3Region='us-east-1' \
    -e S3FinalPath='final/' \
    -e S3Bucket='bucket' \
    -e MinPartSize='5242880' \
    -e MaxRetries='5' \
    -e MaxPartSize='5242880' \
    -e PAYLOAD='THE JSON PAYLOAD' \
    encoder:v1
</code></pre>



# Help and Issues

> Please, reach out if you've some issue or if you need some clarification about it.