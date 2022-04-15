

FROM debian:buster

RUN	apt update && apt install vim wget net-tools mariadb-server -y && rm -rf /var/lib/apt/lists/*; \
    sed -i 's/^bind-address/#&/' /etc/mysql/mariadb.conf.d/50-server.cnf

COPY	./start.sh /
#COPY    ./my.cnf   /etc/mysql/my.cnf
RUN		chmod 755 /start.sh

VOLUME [ "/var/lib/mysql" ]

EXPOSE	3306

#ENTRYPOINT	["sh", "/start.sh"]