#!/bin/bash

#sudo pkill "mono"
#sudo rm -f /tmp/LightgunMono*

for lockfile in /tmp/LightgunMono*lock; do
    sudo kill -USR2 'cat ${lockfile}'
    sudo rm -f ${lockfile}
done
sleep 2