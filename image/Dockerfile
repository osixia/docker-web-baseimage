FROM osixia/light-baseimage:1.3.3

# Add Nginx and non-free repositories
RUN apt-key adv --no-tty --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 \
    && sed -i 's| main| main contrib non-free|g' /etc/apt/sources.list \
    && echo "deb http://nginx.org/packages/mainline/debian/ buster nginx" >> /etc/apt/sources.list

ADD service-available /container/service-available
