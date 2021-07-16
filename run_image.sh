#!/bin/bash -x
docker run -d \
    --name php71-apache-example \
    -v .:/var/www/html \
    -p 8080:80 \
    -e XDEBUG_CONFIG="remote_host=$(ipconfig getifaddr en0)" \
    php71-apache 
