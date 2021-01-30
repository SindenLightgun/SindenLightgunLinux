#!/bin/bash

end=$((SECONDS+5))

while [ $SECONDS -lt $end ]; do
    sudo -u pi echo "run" >> /tmp/p1-add.txt
done

sudo -u pi echo "run" > /tmp/p1-add.txt
/home/pi/RetroPie/roms/ports/SindenLightgun-P1Start.sh