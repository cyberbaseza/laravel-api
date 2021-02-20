FROM php:8.0.1-fpm-alpine3.12

RUN apk update
RUN apk add curl


#COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

RUN apk add postgresql postgresql-dev \
  && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
  && docker-php-ext-install pdo pdo_pgsql pgsql

RUN chown -R www-data:www-data /var/www

EXPOSE 9000




