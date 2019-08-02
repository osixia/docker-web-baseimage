#!/bin/bash -e

# install apache and psmisc (for killall command)
LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends apache2 psmisc
