FROM nginx:mainline-alpine

MAINTAINER Peter Szalatnay <theotherland@gmail.com>

RUN \
    apk add --update \
        curl \
    && rm -fr /var/cache/apk/*

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/