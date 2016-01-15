#!/bin/bash -e

# set -x (bash debug) if log level is trace
# https://github.com/osixia/docker-light-baseimage/blob/stable/image/tool/log-helper
log-helper level eq trace && set -x

rm /etc/apache2/apache2.conf

a2disconf security other-vhosts-access-log charset localized-error-pages serve-cgi-bin
a2enmod headers ssl
