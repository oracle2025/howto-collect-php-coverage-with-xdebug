#!/bin/bash
docker run -v "$(pwd)":/var/www/html -it php73-apache bash
