FROM php:7.3-apache
RUN docker-php-ext-install mysqli && a2enmod rewrite && yes | pecl install xdebug
RUN echo 'date.timezone = "America/New_York"' > /usr/local/etc/php/php.ini
RUN echo 'zend_extension = xdebug.so\nxdebug.remote_enable = 1\nxdebug.remote_log = /tmp/xdebug.log\nxdebug.remote_host = docker.for.mac.localhost\nxdebug.mode=coverage' > /usr/local/etc/php/conf.d/xdebug.ini
EXPOSE 80
