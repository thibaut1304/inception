FROM		alpine:3.16.0

RUN			apk add --no-cache bash php8 php8-fpm php8-phar php8-json php8-curl php8-mysqli mariadb-client php8-iconv openrc

RUN			wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
			chmod +x wp-cli.phar && \
			mv wp-cli.phar /usr/bin/wp

COPY		tools/ /entrypoint/

COPY 		conf/ /entrypoint/

WORKDIR		/entrypoint

ENTRYPOINT	["bash", "start.sh"]
