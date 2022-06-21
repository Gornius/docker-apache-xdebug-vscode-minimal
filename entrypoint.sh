#!/bin/sh
usermod -u $HUID -o www-data
groupmod -g $HGID -o www-data

export APACHE_RUN_DIR=/var/www/html
export APACHE_RUN_USER=www-data
export APACHE_RUN_GROUP=www-data
export APACHE_LOG_DIR=/var/log/apache2

apache2 -D FOREGROUND