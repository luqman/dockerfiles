FROM alpine:edge
MAINTAINER Luqman

RUN apk add --no-cache aria2 && adduser -D -g nobody aria2

VOLUME ["/downloads", "/config"]

EXPOSE 6800
USER aria2

CMD ["/usr/bin/aria2c","--conf-path=/config/aria2.conf"]
