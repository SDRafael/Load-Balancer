#!/bin/sh

IP=$(hostname -i)

NAME=$(hostname)

grep -v "${NAME}.dns" /dnsdata/hosts > /tmp/hosts

echo "$IP ${NAME}.dns" >> /tmp/hosts

cp /tmp/hosts /dnsdata/hosts

echo "Registrado: $IP ${NAME}.dns"

exec nginx -g "daemon off;"