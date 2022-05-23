FROM			debian:buster

RUN				apt update -y && apt install -y bash vim

RUN				apt install -y mariadb-server mariadb-client

#Mariadb a besoin de 2 volume -> https://severalnines.com/blog/how-deploy-mariadb-server-docker-container

CMD				["bash"]
