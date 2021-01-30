#!/bin/bash

LOCKFILE=/tmp/
sudo kill -USR2 'cat ${LOCKFILE}'
sudo rm -f ${LOCKFILE}
sleep 2
