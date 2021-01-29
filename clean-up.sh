#!/bin/bash

echo ""
echo ""
echo "Cleaning previous Sinden Border Overlays"
rm -fv /opt/retropie/emulators/retroarch/overlays/Sinden*

echo ""
echo ""
echo "Cleaning previous Sinden Utilities"
rm -fv /home/pi/RetroPie/roms/ports/*SindenLightgun*

## bin/executables; but leave configs
#
echo ""
echo ""
echo "Cleaning previous Architecture Binaries (leaving configs)"
find bin/ -maxdepth 1 ! -name *exe.config*  -type f -delete
rm -rf bin/RetroArchPatch