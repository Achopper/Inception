
FROM        debian:buster
LABEL       maintainer = "achopper@student.21-school.ru"

RUN         apt update -y && apt upgrade -y && apt install -y sudo bash curl wget php7.3 php-fpm php-mysql php-cli nano curl net-tools vim

#
#RUN       mkdir       /var/www/html
#COPY        ./www.conf /etc/php/7.3/fpm/pool.d/www.conf
##COPY        ./wp-config.php /var/www/html/wordpress/
#COPY        ./start.sh /
#
#
#RUN           wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz && \
#              tar -xvf /tmp/wordpress.tar.gz -C /var/www/html && \
#              chown -R www-data:www-data /var/www/html/wordpress && \
#              chmod -R 775 /var/www/html/wordpress && \
#              chmod  775 /start.sh
#
RUN apt-get update -y && \
    apt-get install -y wget && \
    wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp && \
    apt remove -y wget && \
    rm -rf /var/lib/apt/lists/*

RUN wp core download --path=/usr/src/wordpress --allow-root

COPY www.conf /etc/php/7.3/fpm/pool.d/www.conf
RUN	chmod 777 /etc/php/7.3/fpm/pool.d/www.conf

EXPOSE      9000

CMD         bash start.sh