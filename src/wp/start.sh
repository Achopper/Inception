#!/usr/bin/env sh

mkdir -p /run/php

    sleep 15

if [ ! -f /var/www/html/wordpress/wp-config.php ]; then
cp -R /usr/src/wordpress /var/www/html
wp core config --path=/var/www/html/wordpress --dbhost=${WP_DB_HOST} --dbname=${DB_NAME} --dbuser=${USER} --dbpass=${DB_PASS} --allow-root
wp core install --path=/var/www/html/wordpress --url=achopper.42.fr --title=Inception --admin_user=${USER} --admin_password=${WP_DB_PASS} --admin_email=email@em.com --skip-email --allow-root
wp user create --path=/var/www/html/wordpress --allow-root second second@42.fr --role=author --user_pass=1111
fi
chmod -R 775 /var/www/*;
chown -R www-data /var/www/*;
chgrp -R www-data /var/www/*;
/usr/sbin/php-fpm7.3 --nodaemonize