FROM alpine:latest

RUN apk add bzip2 wget mesa-utils

COPY build.sh /build.sh

ENTRYPOINT ["/build.sh"]
