FROM 		alpine:3.14

RUN			apk add --no-cache bash mariadb mariadb-client

COPY		tools/ /entrypoint/

RUN			mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld && mkdir -p /home/mariadb && chown -R mysql:mysql /home/mariadb

RUN			sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" /etc/my.cnf.d/mariadb-server.cnf
RUN			sed -i "s|skip-networking|# skip-networking|g" /etc/my.cnf.d/mariadb-server.cnf

RUN			mariadb-install-db --user=mysql --datadir='/home/mariadb' --auth-root-authentication-method=normal

WORKDIR		/entrypoint

ENTRYPOINT	["bash", "start.sh"]
