#!/bin/bash -e

FIRST_START_DONE="${CONTAINER_STATE_DIR}/docker-php5-fpm-first-start-done"

# container first start
if [ ! -e "$FIRST_START_DONE" ]; then

  # nginx is installed
  if [ -d "/etc/nginx" ]; then
    ln -s ${CONTAINER_SERVICE_DIR}/.php5-fpm/assets/config/nginx/php5-fpm.conf /etc/nginx/common/php5-fpm.conf
  fi

  # apache2 is installed
  if [ -d "/etc/apache2" ]; then
    ln -s ${CONTAINER_SERVICE_DIR}/.php5-fpm/assets/config/apache2/php5-fpm.conf /etc/apache2/conf-available/php5-fpm.conf
    a2enconf php5-fpm
  fi

  touch $FIRST_START_DONE
fi

exit 0
