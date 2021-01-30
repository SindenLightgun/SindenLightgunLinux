#!/bin/bash

TMP="/tmp/p1-add.txt"

if [ -e $TMP ]; then
    end=$((SECONDS+5))

    while [ $SECONDS -lt $end ]; do
        sudo -u pi echo "run" >> /tmp/p1-add.txt
    done

    /home/pi/RetroPie/roms/ports/SindenLightgun-P1Start.sh
    rm $TMP
fi