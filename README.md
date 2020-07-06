# What is NGINX?

Nginx (pronounced "engine-x") is an open source reverse proxy server for HTTP, HTTPS, SMTP, POP3, and IMAP protocols, as well as a load balancer, HTTP cache, and a web server (origin server). The nginx project started with a strong focus on high concurrency, high performance and low memory usage. It is licensed under the 2-clause BSD-like license and it runs on Linux, BSD variants, Mac OS X, Solaris, AIX, HP-UX, as well as on other *nix flavors. It also has a proof of concept port for Microsoft Window..

## Info

The container is optimized to run !Joomla, so the default.conf is configured for it. Check the build section to customize this container for your needs.

This image is based on the popular Alpine Linux project, available in the alpine official image. Alpine Linux is much smaller than most distribution base images (~5MB), and thus leads to much slimmer images in general.

## Usage

```bash
docker run -d flowman/nginx:tag
```

#### Exposing the port

```
docker run -d \
           -p 8080:80 \
           flowman/nginx:tag
```

Then you can hit [http://localhost:8080](http://localhost:8080) or [http://host-ip:8080](http://host-ip:8080) in your browser.

## Build

For example, if you need to edit the config files, edit the default.conf and than build-it.

```bash
git clone git@github.com:Flowman/docker-nginx.git
cd ./docker-nginx
docker build --rm -t flowman/nginx .
```
