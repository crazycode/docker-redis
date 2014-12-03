FROM debian:wheezy

MAINTAINER crazycode
ENV DEBIAN_FRONTEND noninteractive

RUN         apt-get update && apt-get install -y redis-server

EXPOSE      6379

ENTRYPOINT  ["/usr/bin/redis-server"]
