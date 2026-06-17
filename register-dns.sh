#!/bin/sh
set -e

mkdir -p /dnsdata

touch /dnsdata/hosts

IP=$(hostname -i)

NAME=$(hostname)

grep -v "${NAME}.dns" /dnsdata/hosts > /tmp/hosts 2>/dev/null || true

echo "$IP ${NAME}.dns" >> /tmp/hosts

cp /tmp/hosts /dnsdata/hosts

echo "Registrado: $IP ${NAME}.dns"

cat /dnsdata/hosts