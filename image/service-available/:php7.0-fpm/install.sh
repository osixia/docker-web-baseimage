#!/bin/bash -e

# config
sed -i -e "s/expose_php = On/expose_php = Off/g" /etc/php/7.0/fpm/php.ini

sed -i -e "s/error_log = .*/error_log = \/proc\/self\/fd\/2/g" /etc/php/7.0/fpm/php-fpm.conf

sed -i -e "s/;listen.owner = www-data/listen.owner = www-data/g" /etc/php/7.0/fpm/pool.d/www.conf
sed -i -e "s/;listen.group = www-data/listen.group = www-data/g" /etc/php/7.0/fpm/pool.d/www.conf
sed -i -e "s/;catch_workers_output = yes/catch_workers_output = yes/g" /etc/php/7.0/fpm/pool.d/www.conf
sed -i -e "s/pm =.*/pm = ondemand/g" /etc/php/7.0/fpm/pool.d/www.conf
sed -i -e "s/pm\.max_children.*/pm\.max_children = 9/g" /etc/php/7.0/fpm/pool.d/www.conf

mkdir -p /run/php/

# nginx is installed
if [ -d "/etc/nginx" ]; then
  mkdir /etc/nginx/common
fi

# apache2 is installed
if [ -d "/etc/apache2" ]; then
  a2enmod proxy_fcgi
fi
