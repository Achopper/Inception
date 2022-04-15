
FROM       alpine:3.12

RUN        apk update && apk upgrade && apk add mysql mysql-client openrc vim

#RUN        adduser -D 'Achopper' -g mysql
COPY       ./my.cnf /etc/
COPY       ./start.sh ./create_db.sql ./

RUN        chmod 777 ./tmp
EXPOSE     3306

#ENTRYPOINT ["sh", "/start.sh"]

#FROM debian:buster
#
#RUN	apt update && apt install vim wget net-tools mariadb-server -y && rm -rf /var/lib/apt/lists/*; \
#    sed -i 's/^bind-address/#&/' /etc/mysql/mariadb.conf.d/50-server.cnf
#
#COPY	./start.sh /
#COPY    ./create_db.sql /
#COPY    ./my.cnf   /etc/mysql/
#
#
#VOLUME [ "/var/lib/mysql" ]
#
#EXPOSE	3306

#ENTRYPOINT	["sh", "/start.sh"]