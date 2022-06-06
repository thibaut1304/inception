#!/bin/bash

/usr/bin/mysqld_safe --datadir='/home/mariadb' &

sleep 10

if ! mysqladmin --wait=60 ping; then
	exit 1
fi

already_exist=$( mariadb -e "SHOW DATABASES" | grep "wordpress" | wc -l )

if [[ $already_exist -eq 1 ]] ; then
	echo "wordpress database already exist in mariadb."
	killall mariadbd
	sleep 5
	/usr/bin/mysqld_safe --datadir='/home/mariadb'
else
	echo "create wordpress in mariadb with 'wordpress.sql'"
 	mariadb -e "$(eval "echo \"$(cat wordpress.sql)\"")"
	killall mariadbd
	sleep 5
	echo "Begin !"
	/usr/bin/mysqld_safe --datadir='/home/mariadb'
 fi
