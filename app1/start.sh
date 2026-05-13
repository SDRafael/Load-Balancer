#!/bin/sh
rc-update add avahi-daemon
rc-service avahi-daemon start
nginx -g "daemon off;"
