FROM			debian:buster

RUN				apt update -y && apt install -y bash vim curl

RUN curl -LsS -O https://downloads.mariadb.com/MariaDB/mariadb_repo_setup
RUN bash mariadb_repo_setup --mariadb-server-version=10.5

RUN				apt install -y mariadb-server mariadb-client

#Mariadb a besoin de 2 volume -> https://severalnines.com/blog/how-deploy-mariadb-server-docker-container

RUN			mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld && mkdir -p /home/mariadb && chown -R mysql:mysql /home/mariadb

RUN 	sed 's/bind-address            = 127.0.0.1/bind-address            = 0.0.0.0/'\
		 -i /etc/mysql/mariadb.conf.d/50-server.cnf

# RUN service mysql start && mariadb -u root < /tmp/mariadb/setup.sql

RUN		mariadb-install-db --user=mysql --datadir='/home/mariadb'

CMD				["bash"]
