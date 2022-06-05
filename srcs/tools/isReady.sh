#!/bin/bash

_NC="\033[0;0m"
_GREEN="\033[0;32m"

source srcs/.env

here=$(cat /etc/hosts | grep "127.0.0.1 $USER.42.fr" | wc -l)
if [ "$here" = "1" ]
then
	echo -n "Adding $USER.42.fr in /etc/hosts ... "
	echo -e "${_GREEN}done${_NC}"
fi

echo -n "Launch ."
while [ ! -f "${PATH_HOST}/wordpress/.isReady" ] ; do
	echo -n "."
	sleep 1
done
echo -e " ${_GREEN}done${_NC}"
