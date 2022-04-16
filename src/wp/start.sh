#!/usr/bin/env sh
sleep 15
mkdir -p /run/php

#chmod -R 775 /var/www/html/wordpress;
#chown -R www-data /var/www/html/wordpress;
#chgrp -R www-data /var/www/html/wordpress;
#
#
#curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
#php wp-cli.phar --info;
#chmod +x wp-cli.phar;
#sudo mv wp-cli.phar /usr/local/bin/wp;
#wp core install --path=/var/www/html/wordpress --allow-root --url=achopper.42.fr --title=21 --admin_user=achopper --admin_email=achopper@boss.com;
#wp user create  --path=/var/www/html/wordpress dimon dimon@di.com --role=author --allow-root;
if [ ! -f /var/www/wordpress/wp-config.php ]; then
cp -R /usr/src/wordpress /var/www
wp core config --path=/var/www/wordpress --dbhost=${WP_DB_HOST} --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASS} --allow-root
wp core install --path=/var/www/wordpress --url=achopper.42.fr --title=21 --admin_user=${WP_DB_USER} --admin_password=${WP_DB_PASS} --admin_email=${WP_ADMIN_MAIL} --skip-email --allow-root
wp user create --path=/var/www/wordpress --allow-root second second@42.fr --role=author --user_pass=1111
fi

/usr/sbin/php-fpm7.3 --nodaemonize