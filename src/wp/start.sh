


chmod -R 775 /var/www/html/wordpress;
chown -R www /var/www/html/wordpress;
chgrp -R www /var/www/html/wordpress;


curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
php wp-cli.phar --info;
chmod +x wp-cli.phar;
sudo mv wp-cli.phar /usr/local/bin/wp;
wp core install --allow-root --url=achopper.42.fr --title=21 --admin_user=achopper --admin_email=achopper@boss.com;
wp user create dimon dimon@di.com --role=author --allow-root;

/usr/sbin/php-fpm7.3 -F