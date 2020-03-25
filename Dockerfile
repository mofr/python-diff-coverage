FROM alpine:3.10
RUN apk add --update-cache python py-pip
RUN pip3 install diff-cover==2.6.0 coverage==5.0.4
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
