
FROM        alpine:3.14
LABEL       maintainer = "achopper@student.21-school.ru"

RUN         apk update && apk upgrade && apk add sudo bash php7 php7-fpm php7-session php7-json php7-mysqli php7-xml php7-curl php7-iconv php7-phar php7-redis php7-ctype curl wget  vim

RUN         sleep 15

COPY        ./www.conf /etc/php7/php-fpm.d/
COPY        ./wp-config.php /var/www/html/wordpress/
COPY        ./start.sh /



RUN           adduser -D 'www' -g www
RUN           wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz && \
            #  mkdir /var/www/ /var/www/html && \
              tar -xvf /tmp/wordpress.tar.gz -C /var/www/html && \
              chown -R www:www /var/www/html/wordpress && \
              chmod -R 775 /var/www/html/wordpress && \
              chmod  775 /start.sh


EXPOSE      9000

CMD         bash start.sh