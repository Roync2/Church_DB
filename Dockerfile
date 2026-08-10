FROM php:8.3-apache

# Install SQLite extensions needed for Free Church ChMS
RUN apt-get update && apt-get install -y libsqlite3-dev \
    && docker-php-ext-install pdo pdo_sqlite

# Enable Apache mod_rewrite for application routing
RUN a2enmod rewrite

# Copy your app.php file into the web server directory
COPY app.php /var/www/html/index.php

# Expose port 80 for web traffic
EXPOSE 80
