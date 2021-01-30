#!/bin/bash

LOCKFILE=/tmp/LightgunMono.exe.lock
DETAILS=$(cat ${LOCKFILE})
sudo kill -USR2 $DETAILS
sudo rm -f $LOCKFILE
sleep 2
