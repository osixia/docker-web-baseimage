#!/bin/bash -e
set -o pipefail

# set -x (bash debug) if log level is trace
# https://github.com/osixia/docker-light-baseimage/blob/stable/image/tool/log-helper
log-helper level eq trace && set -x

# nginx is installed
if [ -d "/etc/nginx" ]; then
  ln -sf ${CONTAINER_SERVICE_DIR}/:php5-fpm/assets/config/nginx/php5-fpm.conf /etc/nginx/common/php5-fpm.conf
fi

# apache2 is installed
if [ -d "/etc/apache2" ]; then
  ln -sf ${CONTAINER_SERVICE_DIR}/:php5-fpm/assets/config/apache2/php5-fpm.conf /etc/apache2/conf-available/php5-fpm.conf
  a2enconf php5-fpm | log-helper debug
fi

exit 0
