FROM jurnisa/jurni-solution:laravel-base

COPY --chown=www-data:www-data src/app /var/www/html/app
COPY --chown=www-data:www-data src/bootstrap /var/www/html/bootstrap
COPY --chown=www-data:www-data src/config /var/www/html/config
COPY --chown=www-data:www-data src/database /var/www/html/database
COPY --chown=www-data:www-data src/public /var/www/html/public
COPY --chown=www-data:www-data src/resources /var/www/html/resources
COPY --chown=www-data:www-data src/routes /var/www/html/routes
COPY --chown=www-data:www-data src/storage /var/www/html/storage
COPY --chown=www-data:www-data src/tests /var/www/html/tests
COPY --chown=www-data:www-data src/artisan /var/www/html/
COPY --chown=www-data:www-data src/*.json /var/www/html/
COPY --chown=www-data:www-data src/phpunit.xml /var/www/html/
COPY --chown=www-data:www-data src/webpack.mix.js /var/www/html/
COPY --chown=www-data:www-data src/server.php /var/www/html/

WORKDIR /var/www/html

RUN composer install \
    --ignore-platform-reqs \
    --no-interaction \
    --no-plugins \
    --no-scripts \
    --prefer-dist

RUN rm -rf composer.json package.json

RUN chown -R www-data:www-data /var/www

CMD ["sh","-c","php artisan config:cache && php artisan serve --host 0.0.0.0 --verbose"]

