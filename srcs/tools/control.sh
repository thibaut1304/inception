
#!/bin/bash

source srcs/.env

echo -n "control end of downloading "
while [[ ! -f "${PATH_HOST}/wordpress/.installed" ]] ; do
	echo -n "."
	sleep 1
done

echo "ok"
