#!/bin/bash

_NC="\033[0;0m"
_GREEN="\033[0;32m"
_RED="\033[0;31m"


source srcs/.env

echo -en "Delete ${DOMAIN_NAME} in /etc/hosts"
if [[ $(cat /etc/hosts | grep "${DOMAIN_NAME}" | wc -l) -eq 1 ]] ; then
	sudo sed -i "/127.0.0.1 $DOMAIN_NAME/d" /etc/hosts
fi
echo -e " ${_GREEN}done${_NC}"

echo -en "Delete ${PATH_HOST}"
sudo rm -rf ${PATH_LOGIN}/data
echo -e " ${_GREEN}done${_NC}"
