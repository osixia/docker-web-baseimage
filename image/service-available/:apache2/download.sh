#!/bin/bash -e

# install apache
LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends apache2
