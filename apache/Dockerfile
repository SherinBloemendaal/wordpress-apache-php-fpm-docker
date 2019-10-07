#ubuntu:latest can also be used because the LTS is the latest version
FROM ubuntu:18.04

MAINTAINER Sherin Bloemendaal <info@spbsoftwareontwikkeling.nl>

RUN apt-get update
RUN apt-get -y install apache2

RUN rm /etc/apache2/sites-enabled/*

ADD conf-available /etc/apache2/conf-available
ADD sites-available /etc/apache2/sites-available

EXPOSE 80

ADD apache.sh /usr/bin/apache.sh
RUN chmod +x /usr/bin/apache.sh
ENTRYPOINT apache.sh

VOLUME /var/www

WORKDIR /var/www
