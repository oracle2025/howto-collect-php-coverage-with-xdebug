FROM php:7.1-apache
RUN docker-php-ext-install mysqli 
    && a2enmod rewrite 
    && yes | pecl install xdebug
COPY php.ini /usr/local/etc/php/
COPY xdebug.ini /usr/local/etc/php/conf.d
EXPOSE 80
