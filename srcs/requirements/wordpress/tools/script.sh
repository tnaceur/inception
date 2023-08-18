#! /bin/bash

sed -i 's/\/run\/php\/php7\.4-fpm\.sock/wordpress:9000/g' /etc/php/7.4/fpm/pool.d/www.conf

wp core download --path=/var/www/html --allow-root
wp config create --path=/var/www/html --allow-root --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=$MYSQL_HOST
wp core install --path=/var/www/html --allow-root --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$WP_ADMIN --admin_password=$WP_PASSWORD --admin_email=$WP_EMAIL
wp user create --path=/var/www/html --allow-root $WP_USER $WP_USER_EMAIL --role=author --user_pass=$WP_USER_PASSWORD

php-fpm7.4 -F