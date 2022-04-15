#!/usr/bin/env sh
#sed -i "s/bind-address/\#bind-address/" /etc/mysql/mariadb.conf.d/50-server.cnf
#sed -i "s/\#port/port/" "/etc/mysql/mariadb.conf.d/50-server.cnf"

chown -R mysqld:mysqld /var/lib/mysql
if [ ! -d /var/lib/mysql/wp ]; then
  service mysqld start
  mysql -u root -e "CREATE DATABASE IF NOT EXIST $DB_NAME"
  mysql -u root -e "CREATE USER IF NOT EXIST '$DP_USER'@'%' IDENTIFIED BY '$DB_PASS' WITH GRANT OPTION"
  mysql -u root -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DP_USER'@'%'"
  mysql -u root -e "FLUSH PRIVILEGES"
  mysqladmin -u root password $DB_ROOT_PASSWORD
service mysqld stop
else
  mkdir /var/run/mysqld
  touch /var/run/mysqld/mysqld.pid
  mkfifo /var/run/mysqld/mysqld.sock
fi
chown -R mysql /var/run/mysqld
exec "$@"
