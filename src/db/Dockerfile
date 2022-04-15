
FROM        debian:buster
#alpine:3.14
LABEL       maintainer = "achopper@student.21-school.ru"

RUN         apt update -y && apt upgrade -y && apt install -y mariadb-server
# mariadb-common mariadb-client
RUN         sed -i "s/bind-address/\#bind-address/" /etc/mysql/mariadb.conf.d/50-server.cnf
COPY        ./start.sh /var/www/
RUN         chmod +x /var/www/start.sh
EXPOSE  3306

#ENTRYPOINT  ["/var/www/start.sh"]



#CMD         ["mysqld"]