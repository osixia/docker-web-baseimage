#!/bin/bash -e

rm /etc/apache2/apache2.conf

a2disconf other-vhosts-access-log charset localized-error-pages serve-cgi-bin
a2enmod headers http2 ssl
