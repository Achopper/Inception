#!/usr/bin/env sh

chown -R mysql:mysql /var/lib/mysql

if [ ! -d "/var/lib/mysql/wp" ]; then
service mysql start
mysql -u root -e "CREATE DATABASE IF NOT EXISTS wp DEFAULT CHARACTER SET utf8;"
mysql -u root -e "CREATE USER 'achopper'@'%' IDENTIFIED BY '123';"
mysql -u root -e "GRANT ALL PRIVILEGES ON wp.* TO achopper@'%'"
mysql -u root -e "FLUSH PRIVILEGES;"
mysqladmin -u root password 123
service mysql stop
fi

/usr/bin/mysqld_safe