FROM go:latest
# FROM alpine:latest

MAINTAINER Roy Wonseob Joe <wsjoe78@gmail.com>

WORKDIR "/opt"

ADD .docker_build/chat /opt/bin/chat
ADD ./templates /opt/templates
ADD ./static /opt/static

CMD ["/opt/bin/chat"]
