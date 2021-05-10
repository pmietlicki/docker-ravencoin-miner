#!/bin/sh
set -ex
if [ -f "/home/ravencoin/config/config.json" ]
then
./xmrig --config /home/ravencoin/config/config.json
else
./xmrig --url=${POOL_URL} --user=${POOL_USER} --pass=${POOL_PW} -k --coin=${COIN}
fi
exec "$@"
