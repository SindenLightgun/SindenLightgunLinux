#!/bin/bash

./clean-up.sh

## RretroPie Scripts
#
cp -v RetroPieScripts/*.sh /home/pi/RetroPie/roms/ports/
chmod -v 777 /home/pi/RetroPie/roms/ports/SindenLightgun*

## Borders
#
cp -v Borders/RetroArchBorders/* /opt/retropie/emulators/retroarch/overlays/

## Executable Directory / configs
#
LIGHTGUN_DIR="/home/pi/Lightgun"
mkdir -p $LIGHTGUN_DIR

VERSION=$(git symbolic-ref --short -q HEAD)
TS=$(date +%s)

for each config $LIGHTGUN_DIR do
    if [ -e ${$LIGHTGUN_DIR}/${config} ]; then
        cp ${$LIGHTGUN_DIR}/${config} ${$LIGHTGUN_DIR}/${config}.bak.${VERSION}.${TS}
    else
        cp configs/${config} ${$LIGHTGUN_DIR}/
    fi
end for

