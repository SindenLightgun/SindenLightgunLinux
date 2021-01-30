#!/bin/bash

LOCKFILE=/tmp/LightgunMono.exe.lock

if [ -e $LOCKFILE ]; then
    PID=$(sudo cat ${LOCKFILE})
    if [ "$PID" != "" ]; then
        sudo kill $PID
        sudo echo "" > $LOCKFILE
        sleep 2
    fi
fi
