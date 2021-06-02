FROM quay.io/xdassie/python3.7:3.7scanned
RUN apk update && apk add --upgrade groff
RUN python -m pip install --upgrade pip
RUN pip install --upgrade awscli s3cmd python-magic boto3 
VOLUME /root/.aws
VOLUME /project
WORKDIR /project
ENTRYPOINT ["/bin/sh"]
