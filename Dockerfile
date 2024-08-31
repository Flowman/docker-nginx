FROM nginx:1.27.1-alpine-slim

LABEL maintainer="Peter Szalatnay <theotherland@gmail.com>"

RUN set -eux; \
    apk add --update --no-cache \
        curl;

COPY dockerdir /
