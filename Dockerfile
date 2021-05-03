FROM quay.io/xdassie/python3.7:latest
RUN apk -v --update add \
        python3 \
        py-pip \
        groff \
        less \
        mailcap \
        && \
    pip install --upgrade awscliv2 s3cmd python-magic boto3 && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
VOLUME /root/.aws
VOLUME /project
WORKDIR /project
ENTRYPOINT ["/bin/sh"]
