
LABEL       maintainer = "achopper@student.21-school.ru"

FROM        alpine:3.14

RUN         apk update && apk upgrade && apk add mariadb-server net-tools curl vim

COPY        start.sh /var/www/
RUN         chmod +x /var/www/start.sh
ENTRYPOINT  ["/var/www/start.sh"]

EXPOSE  3306

CMD         ["mysqld"]