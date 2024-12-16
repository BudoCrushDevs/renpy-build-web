FROM alpine:latest

RUN apk add bzip2 wget libxext6 libllvm6.0 mesa-utils

COPY build.sh /build.sh

ENTRYPOINT ["/build.sh"]
