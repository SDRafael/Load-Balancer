#!/usr/bin/bash
dbus-daemon --system
avahi-daemon -D

until getent hosts aplicativo2.local
do
    sleep 1
done

until getent hosts aplicativo3.local
do
    sleep 1
done

nginx -g "daemon off;"