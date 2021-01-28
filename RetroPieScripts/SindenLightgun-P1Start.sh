#!/bin/bash

/home/pi/RetroPie/roms/ports/SindenLightgun-StopAll.sh
cd /home/pi/SindenLightgunLinux/bin/
sudo mono-service LightgunMono.exe
