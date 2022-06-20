FROM php:8.1-apache
RUN docker-php-ext-install mysqli
RUN pecl install xdebug-3.1.4
RUN docker-php-ext-enable xdebug
RUN echo ;\
    echo "[XDebug]" >> /usr/local/etc/php/php.ini; \
    echo "xdebug.mode=debug" >> /usr/local/etc/php/php.ini; \
    echo "xdebug.start_with_request=yes">> /usr/local/etc/php/php.ini; \
    echo "xdebug.client_port=9003" >> /usr/local/etc/php/php.ini; \
    echo "xdebug.client_host = '172.17.0.1'" >> /usr/local/etc/php/php.ini; \