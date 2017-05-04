FROM nginx:1.12.0-alpine

MAINTAINER Peter Szalatnay <theotherland@gmail.com>

RUN \
    apk add --update --no-cache \
        curl

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf