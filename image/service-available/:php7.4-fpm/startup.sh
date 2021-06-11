#!/bin/bash -e
set -o pipefail

# set -x (bash debug) if log level is trace
# https://github.com/osixia/docker-light-baseimage/blob/stable/image/tool/log-helper
log-helper level eq trace && set -x

# nginx is installed
if [ -e "/usr/sbin/nginx" ]; then
  ln -sf ${CONTAINER_SERVICE_DIR}/:php7.4-fpm/assets/config/nginx/php7.4-fpm.conf /etc/nginx/conf-available/php7.4-fpm.conf
fi

# apache2 is installed
if [ -e "/usr/sbin/a2enconf" ]; then
  ln -sf ${CONTAINER_SERVICE_DIR}/:php7.4-fpm/assets/config/apache2/php7.4-fpm.conf /etc/apache2/conf-available/php7.4-fpm.conf
  a2enconf php7.4-fpm | log-helper debug
fi
