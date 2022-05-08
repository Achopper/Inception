

FROM debian:buster

RUN	apt update && apt install vim wget net-tools mariadb-server -y &&  \
    sed -i 's/^bind-address/#&/' /etc/mysql/mariadb.conf.d/50-server.cnf

COPY	./start.sh /
COPY    ./my.cnf   /etc/mysql/

RUN chmod +x ./start.sh

EXPOSE	3306

ENTRYPOINT ["./start.sh"]
CMD ["mysqld"]