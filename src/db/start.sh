#!/usr/bin/env sh
if [ ! -d /var/lib/mysql/server_db ]; then
  openrc-init
  openrc boot
  rc-update add mariadb
  mysql_install_db --datadir=/var/lib/mysql
  rc-service mariadb start
  option --skip-name-resolve
  #mysql -u root < /tmp/create_db.sql
  #mysql server_db -u root < /tmp/server_db.sql
  mysql -u root -e "CREATE DATABASE IF NOT EXIST $DB_NAME"
  mysql -u root -e "CREATE USER IF NOT EXIST '$DP_USER'@'%' IDENTIFIED BY '$DB_PASS' WITH GRANT OPTION"
  mysql -u root -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DP_USER'@'%'"
  mysqladmin -u root password $DB_ROOT_PASSWORD
  service mariadb stop
  /usr/bin/mysqld_safe
else
  /usr/bin/mysqld_safe
fi
#sed -i "s/bind-address/\#bind-address/" "/etc/mysql/mariadb.conf.d/50-server.cnf"
#sed -i "s/\#port/port/" "/etc/mysql/mariadb.conf.d/50-server.cnf"
#chown -R mysqld:mysqld /var/lib/mysql
#if [ ! -d /var/lib/mysql/wp ]; then
#  service mysqld start
#  mysql -u root -e "CREATE DATABASE IF NOT EXIST $DB_NAME"
#  mysql -u root -e "CREATE USER IF NOT EXIST '$DP_USER'@'%' IDENTIFIED BY '$DB_PASS' WITH GRANT OPTION"
#  mysql -u root -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DP_USER'@'%'"
#  mysqladmin -u root password $DB_ROOT_PASSWORD
#service mysqld stop
#else
#  mkdir /var/run/mysqld
#  touch /var/run/mysqld/mysqld.pid
#  mkfifo /var/run/mysqld/mysqld.sock
#fi
#chown -R mysql /var/run/mysqld
#exec "$@"
