#!/bin/bash -e

# set -x (bash debug) if log level is trace
# https://github.com/osixia/docker-light-baseimage/blob/stable/image/tool/log-helper
log-helper level eq trace && set -x


FIRST_START_DONE="${CONTAINER_STATE_DIR}/docker-nginx-first-start-done"

# container first start
if [ ! -e "$FIRST_START_DONE" ]; then

  ln -sf ${CONTAINER_SERVICE_DIR}/:nginx/assets/nginx.conf /etc/nginx/nginx.conf
  ln -s ${CONTAINER_SERVICE_DIR}/:nginx/assets/server-partial-ssl.conf /etc/nginx/server-partial-ssl.conf
  ln -s ${CONTAINER_SERVICE_DIR}/:nginx/assets/conf.d/* /etc/nginx/conf.d

  touch $FIRST_START_DONE
fi

exit 0
