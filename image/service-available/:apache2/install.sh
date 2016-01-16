#!/bin/bash -e

rm /etc/apache2/apache2.conf

a2disconf security other-vhosts-access-log charset localized-error-pages serve-cgi-bin
a2enmod headers ssl
