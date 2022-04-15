#!/usr/bin/env sh
#sed -i "s/bind-address/\#bind-address/" /etc/mysql/mariadb.conf.d/50-server.cnf
#sed -i "s/\#port/port/" "/etc/mysql/mariadb.conf.d/50-server.cnf"

chown -R mysql:mysql /var/lib/mysql
if [ ! -d /var/lib/mysql/wordpress ]; then
  service mysql start
  mysql -u root -e "CREATE DATABASE IF NOT EXISTS wordpress"
  mysql -u root -e "CREATE USER IF NOT EXISTS 'achopper'@'%' IDENTIFIED BY '1234' WITH GRANT OPTION"
  mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'achopper'@'%'"
  mysql -u root -e "FLUSH PRIVILEGES"
  mysqladmin -u root password "1234"
#  $DB_ROOT_PASSWORD
service mysql stop
#else
#  mkdir /var/run/mysqld
#  touch /var/run/mysqld/mysqld.pid
#  mkfifo /var/run/mysqld/mysqld.sock
fi
#chown -R mysql /var/run/mysqld
#exec "$@"
mysqld_safe