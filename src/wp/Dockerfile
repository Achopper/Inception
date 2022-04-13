
LABEL       maintainer = "achopper@student.21-school.ru"

FROM        alpine:3.14

RUN         apk update && apk upgrade && apk add php-fpm php-mysql php-mbstring php-gd php-mysql wget  vim

RUN         bash /etc/init.d/php7.3-fpm start && \
              wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz && \
              mkdir /var/www/ /var/www/html && \
              tar -xvf /tmp/wordpress.tar.gz -C /var/www/html && \
              chown -R www-data:www-data /var/www/html/wordpress && \
              chmod -R 775 /var/www/html/wordpress \



COPY        wp-config.php /var/www/html/wordpress/
COPY        www.conf /etc/php7/php-fpm.d/

EXPOSE      9000