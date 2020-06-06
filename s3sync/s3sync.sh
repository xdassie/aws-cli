FROM quay.io/xdassie/aws-cli:latest
COPY s3sync.sh /tmp/s3sync.sh
RUN chmod 770 /tmp/s3sync.sh
ENTRYPOINT /tmp/s3sync.sh
