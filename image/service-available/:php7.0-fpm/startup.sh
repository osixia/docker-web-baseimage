#!/bin/bash -e
set -o pipefail

# set -x (bash debug) if log level is trace
# https://github.com/osixia/docker-light-baseimage/blob/stable/image/tool/log-helper
log-helper level eq trace && set -x

# nginx is installed
if [ -e "/usr/sbin/nginx" ]; then
  ln -sf ${CONTAINER_SERVICE_DIR}/:php7.0-fpm/assets/config/nginx/php7.0-fpm.conf /etc/nginx/common/php7.0-fpm.conf
fi

# apache2 is installed
if [ -e "/usr/sbin/a2enconf" ]; then
  ln -sf ${CONTAINER_SERVICE_DIR}/:php7.0-fpm/assets/config/apache2/php7.0-fpm.conf /etc/apache2/conf-available/php7.0-fpm.conf
  a2enconf php7.0-fpm | log-helper debug
fi

exit 0
