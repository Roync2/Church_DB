FROM php:8.3-apache

RUN apt-get update && apt-get install -y libsqlite3-dev && docker-php-ext-install pdo pdo_sqlite

RUN a2enmod rewrite

COPY app.php /var/www/html/index.php

RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

EXPOSE 80
