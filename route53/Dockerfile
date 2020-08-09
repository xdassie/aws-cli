FROM quay.io/xdassie/aws-cli:latest
COPY get_ip.sh /get_ip.sh
RUN chmod 770 /get_ip.sh
ENTRYPOINT /bin/sh
CMD ["-c" , "/get_ip.sh"]

