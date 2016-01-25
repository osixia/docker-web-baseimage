#!/bin/bash -e

LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends php5-fpm

# if apache2 is installed
if [ -d "/etc/apache2" ]; then
  LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libapache2-mod-fastcgi
fi
