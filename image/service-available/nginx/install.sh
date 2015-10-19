#!/bin/bash -e

# install nginx
LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends nginx

# add configs
ln -sf /container/service-available/nginx/assets/nginx.conf /etc/nginx/nginx.conf
ln -s /container/service-available/nginx/assets/server-partial-ssl.conf /etc/nginx/server-partial-ssl.conf
ln -s /container/service-available/nginx/assets/conf.d/* /etc/nginx/conf.d

# create sites-enabled directory to keep debian style
mkdir -p /etc/nginx/sites-enabled/
