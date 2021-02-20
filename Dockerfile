FROM php:7.3-apache

RUN docker-php-ext-install pdo pdo_mysql
RUN apt-get -y install --fix-missing zip unzip
RUN apt-get -y install --fix-missing git

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN a2enmod rewrite

# ADD conf/apache.conf /etc/apache2/sites-available/000-default.conf
