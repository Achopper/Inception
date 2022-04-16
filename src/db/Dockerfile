

FROM debian:buster

RUN	apt update && apt install vim wget net-tools mariadb-server -y && rm -rf /var/lib/apt/lists/*; \
    sed -i 's/^bind-address/#&/' /etc/mysql/mariadb.conf.d/50-server.cnf

COPY	./start.sh /
COPY    ./create_db.sql /
COPY    ./my.cnf   /etc/mysql/


VOLUME [ "/var/lib/mysql" ]

EXPOSE	3306

ENTRYPOINT	["sh", "/start.sh"]