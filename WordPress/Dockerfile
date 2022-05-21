FROM		debian:buster

LABEL		maintener="thhusser@student.42.fr"

RUN			apt update -y && apt-get install -y bash

RUN			mkdir -p /home/conf

COPY		./conf/latest-fr_FR.tar.gz /home/conf/

RUN			tar -xzvf ./home/conf/latest-fr_FR.tar.gz -C /home/conf && rm -f ./home/conf/latest-fr_FR.tar.gz

#Config wordpress a faire : https://wordpress.org/support/article/editing-wp-config-php/

#installation php -> https://howto.wared.fr/installation-wordpress-ubuntu-nginx/

#creation user : utile ?
RUN			useradd -ms /bin/bash thhusser

#affecter les droits a l'user thibaut et suppression des droits des autres !
# chown -R thhusser:www-data /var/www/wordpress && chmod -R o-rwx /var/www/blog

EXPOSE		9000

CMD	["bash"]
# RUN		install wordpress
