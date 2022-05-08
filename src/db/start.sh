#!/usr/bin/env sh

chown -R mysql:mysql /var/lib/mysql

if [ ! -d "/var/lib/mysql/$DB_NAME" ]; then
service mysql start
sleep 5
mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
mysql -u root -e "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';"
mysql -u root -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO  '$DB_USER'@'%';"
mysql -u root -e "FLUSH PRIVILEGES;"
mysqladmin -u root password $DB_ROOT_PASSWORD
service mysql stop
else
mkdir  /var/run/mysqld
touch /var/run/mysqld/mysqld.pid
mkfifo /var/run/mysqld/mysqld.sock
fi
chown -R mysql /var/run/mysqld
exec "$@"


