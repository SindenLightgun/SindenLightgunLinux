#!/bin/bash

sleep 10
#/home/pi/RetroPie/roms/ports/SindenLightgun-P1Start.sh
cd /home/pi/SindenLightgunLinux/bin/
sudo mono-service LightgunMono.exe --debug > /tmp/add.txt