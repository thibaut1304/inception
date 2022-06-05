#!/bin/bash

source srcs/.env

if [[ $(cat /etc/hosts | grep "${DOMAIN_NAME}" | wc -l) -eq 0 ]] ; then
	echo "127.0.0.1 ${DOMAIN_NAME}" >> /etc/hosts
fi
sudo mkdir -p -v ${PATH_HOST}
sudo mkdir -p -v ${PATH_HOST}/db
sudo mkdir -p -v ${PATH_HOST}/wordpress
sudo chown -R $USER:$USER ${PATH_HOST}
sudo chmod -R 755 ${PATH_HOST}
