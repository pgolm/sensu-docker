FROM ubuntu:xenial
MAINTAINER Peter Golm <golm.peter@gmail.com>

ENV SENSU_VERSION=0.29.0-11

RUN \
    apt-get update &&\
    apt-get install -y curl ca-certificates apt-transport-https &&\
    curl -s https://sensu.global.ssl.fastly.net/apt/pubkey.gpg | apt-key add - &&\
    echo "deb     https://sensu.global.ssl.fastly.net/apt xenial main" > /etc/apt/sources.list.d/sensu.list &&\
    apt-get update &&\
    apt-get install -y sensu=${SENSU_VERSION}

ENV PATH /opt/sensu/embedded/bin:$PATH

EXPOSE 4567
