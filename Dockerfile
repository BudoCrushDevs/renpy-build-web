FROM alpine:latest

RUN apk add bzip2 wget libxext6 mesa-utils

COPY build.sh /build.sh

ENTRYPOINT ["/build.sh"]
