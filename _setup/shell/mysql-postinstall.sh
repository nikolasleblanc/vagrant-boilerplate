#!/usr/bin/env bash
DBUSER=root
DBPASSWD=1234
DBNAME=dbname

mysql -u root -p$DBPASSWD -e "CREATE DATABASE $DBNAME"
mysql -u root -p$DBPASSWD -e "grant all privileges on $DBNAME.* to '$DBUSER'@'localhost' identified by '$DBPASSWD' WITH GRANT OPTION;"
mysql -u root -p$DBPASSWD -e "grant all privileges on $DBNAME.* to '$DBUSER'@'%' identified by '$DBPASSWD' WITH GRANT OPTION;"

#mysql -u root -p$DBPASSWD $DBNAME < /vagrant/_sql/dump.sql

sudo cp /vagrant/_setup/config/my.cnf /etc/mysql/my.cnf

sudo service mysql restart
