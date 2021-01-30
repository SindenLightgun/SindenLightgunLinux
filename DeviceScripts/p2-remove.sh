#!/bin/bash

LOCKFILE=/tmp/LightgunMono2.exe.lock

if [ -e $LOCKFILE ]; then
    PID=$(sudo cat ${LOCKFILE})
    if [ "$PID" != "" ]; then
        sudo kill $PID
        echo "" > $LOCKFILE
        sleep 2
    fi
fi
