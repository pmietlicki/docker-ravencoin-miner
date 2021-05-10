#!/bin/sh
set -ex
if [ -f "/home/monero/config/config.json" ]
then
./xmrig --config /home/monero/config/config.json
else
./xmrig --url=${POOL_URL} --user=${POOL_USER} --pass=${POOL_PW} -k --coin=${COIN}
fi
exec "$@"
