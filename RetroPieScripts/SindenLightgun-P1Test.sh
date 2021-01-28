#!/bin/bash

/home/pi/RetroPie/roms/ports/SindenLightgun-StopAll.sh

cd /home/pi/SindenLightgunLinux/bin/
sudo mono LightgunMono.exe sdl 30
