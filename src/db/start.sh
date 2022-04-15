#!/usr/bin/env sh
#sed -i "s/bind-address/\#bind-address/" /etc/mysql/mariadb.conf.d/50-server.cnf
#sed -i "s/\#port/port/" "/etc/mysql/mariadb.conf.d/50-server.cnf"

chown -R mysql:mysql /var/lib/mysql
if [ ! -d /var/lib/mysql/wordpress ]; then
  service mysql start
  mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
  mysql -u root -e "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';"
  mysql -u root -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%'"
  mysql -u root -e "FLUSH PRIVILEGES;"
  mysqladmin -u root password $DB_ROOT_PASSWORD
service mysql stop
#else
#  mkdir /var/run/mysqld
#  touch /var/run/mysqld/mysqld.pid
#  mkfifo /var/run/mysqld/mysqld.sock
fi
#chown -R mysql /var/run/mysqld
#exec "$@"
mysqld_safe