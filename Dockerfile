FROM quay.io/xdassie/python3.7:latest
RUN apk -v --update add \
        python3 \
        py-pip \
        groff \
        less \
        mailcap \
        && \
    pip install --upgrade awscli==2.1.29 s3cmd python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
VOLUME /root/.aws
VOLUME /project
WORKDIR /project
ENTRYPOINT ["/bin/sh"]
