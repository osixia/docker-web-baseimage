FROM osixia/light-baseimage:0.2.6
MAINTAINER Bertrand Gouny <bertrand.gouny@osixia.net>

# Add Nginx and non-free repositories
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 \
    && sed -i 's| main| main contrib non-free|g' /etc/apt/sources.list \
    && echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list

ADD service-available /container/service-available
