FROM quay.io/xdassie/python3.7:latest
RUN apk -v --update add \
        curl \
        python3 \
        py-pip \
        groff \
        less \
        mailcap \
        && \
    pip install --upgrade  s3cmd python-magic boto3 && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install    
VOLUME /root/.aws
VOLUME /project
WORKDIR /project
ENTRYPOINT ["/bin/sh"]
