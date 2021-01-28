#!/bin/bash

mkdir -p bin

./clean-up.sh

## RretroPie Scripts
#
mkdir -p /home/pi/RetroPie/roms/ports/
cp -v RetroPieScripts/*.sh /home/pi/RetroPie/roms/ports/
chmod -v 755 /home/pi/RetroPie/roms/ports/SindenLightgun*

## Borders
#
cp -v Borders/RetroArchBorders/* /opt/retropie/emulators/retroarch/overlays/

## Executable Directory / configs
#
BIN_DIR="bin"
mkdir -p $BIN_DIR

VERSION=$(git symbolic-ref --short -q HEAD)
TS=$(date +%s)

cp configs/test.bmp ${BIN_DIR}/

for configfile in configs/*.config; do
    CONFIG=$(basename $configfile)
    if [ -e ${BIN_DIR}/${CONFIG} ]; then
        cp ${BIN_DIR}/${CONFIG} ${BIN_DIR}/${CONFIG}.bak.${VERSION}.${TS}
    else
        cp ${configfile} ${BIN_DIR}/
    fi
done

