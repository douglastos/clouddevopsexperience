FROM php:7.4-apache

RUN apt-get update && apt-get install libfreetype6-dev libjpeg62-turbo-dev libpng-dev -y &&\
    docker-php-ext-configure gd --with-freetype --with-jpeg &&\
    docker-php-ext-install -j$(nproc) gd &&\
    docker-php-ext-install pdo_mysql &&\
    docker-php-ext-install mysqli

WORKDIR /var/www/html/
COPY index.php /var/www/html/
COPY conexao.php /var/www/html/