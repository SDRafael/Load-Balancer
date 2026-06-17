#!/bin/sh

echo "Verificando DNS..."

for host in aplicativo2.dns aplicativo3.dns
do
    COUNT=0

    until getent hosts "$host" >/dev/null 2>&1
    do
        COUNT=$((COUNT+1))

        if [ $COUNT -ge 30 ]
        then
            echo "$host não resolveu."
            break
        fi

        sleep 1
    done

    echo "$host OK"
done