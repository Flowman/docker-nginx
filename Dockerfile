FROM nginx:1.19.8-alpine

LABEL maintainer="Peter Szalatnay <theotherland@gmail.com>"

RUN set -eux; \
    apk add --update --no-cache \
        curl;

COPY dockerdir /
