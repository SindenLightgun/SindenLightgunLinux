#!/bin/bash

VERSION=$(git symbolic-ref --short -q HEAD)
TS=$(date +%s)
BIN_DIR="bin"

mkdir -p $BIN_DIR

./clean-up.sh

## RetroPie Scripts
#
echo ""
echo ""
echo "Copying Sinden Utilities"
mkdir -p /home/pi/RetroPie/roms/ports/
cp -v RetroPieScripts/*.sh /home/pi/RetroPie/roms/ports/
chmod -v 755 /home/pi/RetroPie/roms/ports/SindenLightgun*

## Borders
#
echo ""
echo "Copying Sinden Border Overlays"
cp -v Borders/RetroArchBorders/* /opt/retropie/emulators/retroarch/overlays/

## Binary Directory Configs
#
echo ""
echo ""
echo "Copying Configurations."

cp configs/test.bmp ${BIN_DIR}/

for configfile in configs/*.config; do
    CONFIG=$(basename $configfile)
    if [ -f ${BIN_DIR}/${CONFIG} ]; then
        echo "Configurations already exist. Creating backup."
        cp -v ${BIN_DIR}/${CONFIG} ${BIN_DIR}/${CONFIG}.bak.${VERSION}.${TS}
    else
        cp -v ${configfile} ${BIN_DIR}/
    fi
done

## Copy per-arch Binaries
#
ARCH=$(uname -m)

if [[ "$ARCH" == *"arm"* ]]; then
    ARCH="Pi-ARM"
fi

echo ""
echo ""
if [ -e arch/${ARCH} ]; then
    echo "Copying ${ARCH} binaries."
    cp -rv arch/${ARCH}/* ${BIN_DIR}/
fi


## Leave this out of the above just to make sure stuff was copied
if [ -f ${BIN_DIR}/LightgunMono.exe ]; then
    echo ""
    echo "Properly copied arch/${ARCH} binaries."
else
    echo ""
    echo ""
    echo "Could not properly determine your system architecture [${ARCH}]."
    echo "Follow the README to copy the proper files to the '/bin' folder"
fi
echo ""
echo ""
