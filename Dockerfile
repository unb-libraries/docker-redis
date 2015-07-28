FROM phusion/baseimage
MAINTAINER Jacob Sanford <jsanford@unb.ca>

ENV REDIS_VERSION=2.8.13

RUN apt-get update && \
  apt-get install -y git curl build-essential && apt-get clean

RUN cd /tmp && \
    curl -O http://download.redis.io/releases/redis-$REDIS_VERSION.tar.gz && \
    tar xzvf redis-$REDIS_VERSION.tar.gz && \
    cd redis-$REDIS_VERSION && \
    make && \
    make install && \
    cp -f src/redis-sentinel /usr/local/bin && \
    mkdir -p /etc/redis && \
    cp -f *.conf /etc/redis && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD services/ /etc/service/
RUN chmod -v +x /etc/service/*/run

ADD conf/redis/redis.conf /etc/redis/redis.conf
RUN mkdir /data

EXPOSE 6379
