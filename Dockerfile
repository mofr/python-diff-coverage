FROM frolvlad/alpine-python3
RUN apk add --no-cache git
RUN pip3 install diff-cover==2.6.0 coverage==5.0.4
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
