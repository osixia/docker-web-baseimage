FROM osixia/light-baseimage:0.2.6
MAINTAINER Bertrand Gouny <bertrand.gouny@osixia.net>

# Add Nginx and non-free repositories
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 \
    && echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list \
    && echo "deb http://http.debian.net/debian/ jessie main contrib non-free" >> /etc/apt/sources.list

ADD service-available /container/service-available
