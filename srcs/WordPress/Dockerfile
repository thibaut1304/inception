FROM		alpine:3.14

RUN			apk add --no-cache bash php7 php7-fpm php7-phar php7-json php7-curl php7-mysqli mariadb-client php7-iconv

RUN			wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
			chmod +x wp-cli.phar && \
			mv wp-cli.phar /usr/bin/wp

COPY		tools/ /entrypoint/

WORKDIR		/entrypoint

ENTRYPOINT	["bash", "start.sh"]
