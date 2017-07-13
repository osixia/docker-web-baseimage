#!/bin/bash -e

# set -x (bash debug) if log level is trace
# https://github.com/osixia/docker-light-baseimage/blob/stable/image/tool/log-helper
log-helper level eq trace && set -x

# create sites-enabled directory to keep debian style
mkdir -p /etc/nginx/sites-enabled/

# forward request and error logs to docker log collector
ln -sf /proc/1/fd/1 /var/log/nginx/access.log
ln -sf /proc/1/fd/2 /var/log/nginx/error.log
