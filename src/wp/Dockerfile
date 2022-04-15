
FROM        debian:buster
LABEL       maintainer = "achopper@student.21-school.ru"

RUN         apt update -y && apt upgrade -y && apt install -y sudo bash curl wget php7.3 php-fpm php-mysql php-cli nano curl net-tools  vim



COPY        ./www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY        ./wp-config.php /var/www/html/wordpress/
COPY        ./start.sh /



#RUN           adduser -D 'www' -g www
RUN           wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz && \
            #  mkdir /var/www/ /var/www/html && \
              tar -xvf /tmp/wordpress.tar.gz -C /var/www/html && \
              chown -R www-data:www-data /var/www/html/wordpress && \
              chmod -R 775 /var/www/html/wordpress && \
              chmod  775 /start.sh


EXPOSE      9000

CMD         bash start.sh