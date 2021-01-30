#!/bin/bash

LOCKFILE=/tmp/LightgunMono.exe.lock
DETAILS=$(sudo cat ${LOCKFILE})
sudo kill -USR2 $DETAILS
sudo rm -f $LOCKFILE
sleep 2
