#!/bin/bash

rm -f /opt/retropie/emulators/retroarch/overlays/Sinden*
rm -f /home/pi/RetroPie/roms/ports/*SindenLightgun*

## bin/executables; but leave configs
#
find bin/ -maxdepth 1 ! -name *exe.config*  -type f -delete
rm -rf bin/RetroArchPatch