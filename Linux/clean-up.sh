#!/bin/bash

rm /opt/retropie/emulators/retroarch/overlays/SindenLightgun*
rm /home/pi/RetroPie/roms/ports/*SindenLightgun*

rm -rfv bin/* !("LightgunMono.exe.config"|"LightgunMono2.exe.config")