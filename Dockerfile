FROM python:3.6-alpine

MAINTAINER softlabperu.com

RUN apk add --update \
    gcc \
    g++ \
    make \
    libaio \
    automake \
    libc-dev \
    musl-dev \
    pcre-dev \
    mariadb-dev \
    python3-dev \
    linux-headers \
    postgresql-dev \
    && rm  -rf /tmp/* /var/cache/apk/*
