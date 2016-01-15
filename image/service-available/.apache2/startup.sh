#!/bin/bash -e

# set -x (bash debug) if log level is trace
# https://github.com/osixia/docker-light-baseimage/blob/stable/image/tool/log-helper
log-helper level eq trace && set -x

FIRST_START_DONE="${CONTAINER_STATE_DIR}/docker-apache2-first-start-done"

# container first start
if [ ! -e "$FIRST_START_DONE" ]; then

  ln -sf ${CONTAINER_SERVICE_DIR}/.apache2/assets/apache2.conf /etc/apache2/apache2.conf
  ln -s ${CONTAINER_SERVICE_DIR}/.apache2/assets/conf-available/* /etc/apache2/conf-available/
  ln -sf ${CONTAINER_SERVICE_DIR}/.apache2/assets/sites-available/* /etc/apache2/sites-available/
  a2enconf custom-security | log-helper info

  touch $FIRST_START_DONE
fi

exit 0
