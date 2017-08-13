# Sensu

[![Build Status](https://travis-ci.org/pgolm/sensu-docker.svg?branch=master)](https://travis-ci.org/pgolm/sensu-docker)
[![Docker Pulls](https://img.shields.io/docker/pulls/pgolm/sensu.svg)](https://registry.hub.docker.com/u/pgolm/sensu/)
[![Docker Automated buil](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://registry.hub.docker.com/u/pgolm/sensu/)

A [sensu](https://sensuapp.org/) docker image, made with love.

# Add plugins

You could build your own image with plugins included.

```
FROM pgolm/sensu:latest

ARG PLUGINS
ENV SENSU_PLUGINS=${PLUGINS}

RUN \
    apt-get update &&\
    apt-get install -y libxml2 libxml2-dev libxslt1-dev zlib1g-dev build-essential &&\
    sensu-install -P $SENSU_PLUGINS &&\
    apt-get remove -y libxml2 libxml2-dev libxslt1-dev zlib1g-dev build-essential
```
