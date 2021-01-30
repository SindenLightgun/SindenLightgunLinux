#!/bin/bash

LOCKFILE=/tmp/LightgunMono.exe.lock

if [ -e $LOCKFILE ]; then
    DETAILS=$(sudo cat ${LOCKFILE})
    sudo kill $DETAILS
    #sudo rm -f $LOCKFILE
    sleep 2
fi
