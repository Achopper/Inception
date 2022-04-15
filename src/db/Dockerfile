
FROM        alpine:3.14
LABEL       maintainer = "achopper@student.21-school.ru"

RUN         apk update && apk upgrade && apk install mariadb-server -y
# mariadb-common mariadb-client
RUN         sed -i "s/bind-address/\#bind-address/" /etc/mysql/mariadb.conf.d/50-server.cnf
COPY        ./start.sh /var/www/
RUN         chmod +x /var/www/start.sh
EXPOSE  3306

#ENTRYPOINT  ["/var/www/start.sh"]



#CMD         ["mysqld"]