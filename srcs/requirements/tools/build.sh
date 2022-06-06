#!/bin/bash

source srcs/.env

if [[ $(cat /etc/hosts | grep "${DOMAIN_NAME}" | wc -l) -eq 0 ]] ; then
	# echo "127.0.0.1 ${DOMAIN_NAME}" >> /etc/hosts
	echo "127.0.0.1 ${DOMAIN_NAME}" | sudo tee -a /etc/hosts > /dev/null
fi

if [[ ! -d ${PATH_HOST} ]]; then
	sudo mkdir -p -v ${PATH_HOST}
	sudo chown -R $USER:$USER ${PATH_HOST}
	sudo chmod -R 755 ${PATH_HOST}
fi
if [[ ! -d ${PATH_HOST}/db ]]; then
	sudo mkdir -p -v ${PATH_HOST}/db
fi
if [[ ! -d ${PATH_HOST}/wordpress ]]; then
	sudo mkdir -p -v ${PATH_HOST}/wordpress
fi
