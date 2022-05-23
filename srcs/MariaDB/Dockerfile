FROM			debian:buster

RUN				apt update -y && apt install -y bash vim

RUN				apt install -y mariadb-server mariadb-client

#Mariadb a besoin de 2 volume -> https://severalnines.com/blog/how-deploy-mariadb-server-docker-container

RUN			mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld && mkdir -p /home/mariadb && chown -R mysql:mysql /home/mariadb

RUN		mariadb-install-db --user=mysql --datadir='/home/mariadb'

# RUN service mysql start && mariadb -u root < /tmp/mariadb/setup.sql

RUN 	sed 's/bind-address            = 127.0.0.1/bind-address            = 0.0.0.0/'\
		 -i /etc/mysql/mariadb.conf.d/50-server.cnf

# RUN		mariadb-install-db --user=mysql --datadir='/home/mariadb'

CMD				["bash"]
