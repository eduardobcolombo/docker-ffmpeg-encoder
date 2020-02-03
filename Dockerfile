FROM jrottenberg/ffmpeg
LABEL maintainer='Eduardo B Colombo <eduardobcolombo@gmail.com>'

RUN apt-get update

WORKDIR /encoder

COPY encoder/main /etc/encoder/main

ENV AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}
ENV AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}

ENV AppPath=/etc/encoder/
ENV MaxPartSize=${MaxPartSize}
ENV MaxRetries=${MaxRetries}
ENV MinPartSize=${MinPartSize}
ENV S3Bucket=${S3Bucket}
ENV S3FinalPath=${S3FinalPath}
ENV S3Region=${S3Region}

ENTRYPOINT /etc/encoder/main ${PAYLOAD}