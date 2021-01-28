#!/bin/bash

rm /opt/retropie/emulators/retroarch/overlays/SindenLightgun*
rm /home/pi/RetroPie/roms/ports/*SindenLightgun*

## bin/executables; but leave configs
#
find ../bin/ ! -name *exe.config* -maxdepth 1 -type f -delete
rm -rf ../bin/RetroArchPatch