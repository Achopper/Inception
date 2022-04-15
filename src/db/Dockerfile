
FROM        alpine:3.14
LABEL       maintainer = "achopper@student.21-school.ru"

RUN         apk update && apk upgrade && apk add bash net-tools curl vim openrc mariadb mariadb-common mariadb-client

COPY        ./start.sh /var/www/
RUN         chmod +x /var/www/start.sh
EXPOSE  3306

ENTRYPOINT  ["/var/www/start.sh"]



#CMD         ["mysqld"]