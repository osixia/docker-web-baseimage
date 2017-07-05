#!/bin/bash -e

# config
sed -i -e "s/expose_php = On/expose_php = Off/g" /etc/php7/fpm/php.ini
sed -i -e "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g" /etc/php7/fpm/php.ini
sed -i -e "s/;listen.owner = www-data/listen.owner = www-data/g" /etc/php7/fpm/pool.d/www.conf
sed -i -e "s/;listen.group = www-data/listen.group = www-data/g" /etc/php7/fpm/pool.d/www.conf
sed -i -e "s/;catch_workers_output = yes/catch_workers_output = yes/g" /etc/php7/fpm/pool.d/www.conf

# nginx is installed
if [ -d "/etc/nginx" ]; then
  mkdir /etc/nginx/common
fi

# apache2 is installed
if [ -d "/etc/apache2" ]; then
  a2enmod fastcgi actions alias
fi
