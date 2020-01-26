FROM quay.io/xdassie/aws-cli:latest
COPY get_ip.sh /tmp/get_ip.sh
RUN chmod 770 /tmp/get_ip.sh
ENTRYPOINT /tmp/get_ip.sh
