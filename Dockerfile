FROM php:7.2.5-apache-stretch
MAINTAINER Julian Labuschagne "julian.labuschagne@gmail.com"
ENV REFRESHED_AT 2018-05-09

RUN apt-get update && apt-get install -y \
	libpng-dev

RUN docker-php-ext-install -j$(nproc) gd opcache mysqli pdo_mysql

RUN a2enmod rewrite

COPY config/php.ini /usr/local/etc/php/