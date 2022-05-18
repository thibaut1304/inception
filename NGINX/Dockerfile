FROM	debian:buster

LABEL 		maintener="thhusser@student.42.fr"

RUN			apt update -y && apt-get install -y nginx openssl bash vim

RUN			mkdir /etc/nginx/ssl
RUN			openssl req -newkey rsa:2048 -nodes -keyout /etc/nginx/ssl/thhusser.42.fr.key \
			-x509 -days 365 -out /etc/nginx/ssl/thhusser.42.fr.crt \
			-subj "/C=FR/ST=92/L=Clichy/O=42/CN=thhusser"

COPY		conf/default.conf /etc/nginx/sites-available/default

RUN			mkdir -p /home/hello

WORKDIR		/home/hello

COPY		conf/entrypoint.sh .

EXPOSE		443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
