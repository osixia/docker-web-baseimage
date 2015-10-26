FROM osixia/light-baseimage:0.1.2
MAINTAINER Bertrand Gouny <bertrand.gouny@osixia.net>

# Add Nginx and non-free repositories
RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 \
    && echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" > /etc/apt/sources.list.d/nginx.list \
    && echo "deb http://http.debian.net/debian/ jessie main contrib non-free" > /etc/apt/sources.list.d/non-free.list

ADD service-available /container/service-available
