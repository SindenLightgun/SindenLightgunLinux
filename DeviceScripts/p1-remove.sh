#!/bin/bash

LOCKFILE=/tmp/LightgunMono.exe.lock
sudo kill -USR2 'cat ${LOCKFILE}'
sudo rm -f ${LOCKFILE}
sleep 2
