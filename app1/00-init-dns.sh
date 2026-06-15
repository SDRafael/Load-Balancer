#!/bin/sh

until getent hosts aplicativo2.dns
do
    sleep 1
done

until getent hosts aplicativo3.dns
do
    sleep 1
done

nginx -g "daemon off;"