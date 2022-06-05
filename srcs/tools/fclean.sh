#!/bin/bash

source srcs/.env

if [[ $(cat /etc/hosts | grep "${DOMAIN_NAME}" | wc -l) -eq 1 ]] ; then
	sudo sed -i "/127.0.0.1 $DOMAIN_NAME/d" /etc/hosts
fi

sudo rm -rf ${PATH_LOGIN}/data
