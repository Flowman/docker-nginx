FROM nginx:1.14.2-alpine

MAINTAINER Peter Szalatnay <theotherland@gmail.com>

RUN \
    apk add --update --no-cache \
        curl

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY datadog.conf /etc/nginx/conf.d/datadog.conf
