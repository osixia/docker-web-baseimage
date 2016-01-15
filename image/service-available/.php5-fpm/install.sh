#!/bin/bash -e

# set -x (bash debug) if log level is trace
# https://github.com/osixia/docker-light-baseimage/blob/stable/image/tool/log-helper
log-helper level eq trace && set -x


# config
sed -i --follow-symlinks -e "s/expose_php = On/expose_php = Off/g" /etc/php5/fpm/php.ini
sed -i --follow-symlinks -e "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g" /etc/php5/fpm/php.ini
sed -i --follow-symlinks -e "s/;listen.owner = www-data/listen.owner = www-data/g" /etc/php5/fpm/pool.d/www.conf
sed -i --follow-symlinks -e "s/;listen.group = www-data/listen.group = www-data/g" /etc/php5/fpm/pool.d/www.conf

# nginx is installed
if [ -d "/etc/nginx" ]; then
  mkdir /etc/nginx/common
fi

# apache2 is installed
if [ -d "/etc/apache2" ]; then
  a2enmod fastcgi actions alias | log-helper info
fi
