ARG PHP_VERSION
FROM php:${PHP_VERSION}-apache

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils git nano zip unzip \
    && docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql

WORKDIR /var/www/html

EXPOSE 80

ENTRYPOINT ["bash", "./entrypoint.sh"]