#!/bin/bash

LOCKFILE=/tmp/LightgunMono.exe.lock

if [ -e $LOCKFILE ]; then
    PID=$(sudo cat ${LOCKFILE})
    sudo kill $PID
    sudo rm $LOCKFILE
    sleep 2
fi
