#!/bin/bash

# sed -i 's/^bind-address\s*=.*/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

service mariadb start

mariadb -u root -h localhost -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"
mariadb -u root -h localhost -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
mariadb -u root -h localhost -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';"
mariadb -u root -h localhost -e "FLUSH PRIVILEGES;"

service mariadb stop

mariadbd --bind-address=0.0.0.0