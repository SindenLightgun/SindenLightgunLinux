#!/bin/bash

/home/pi/SindenLightgunLinux/DeviceScripts/p1-remove.sh

cd /home/pi/SindenLightgunLinux/bin/
sudo mono LightgunMono.exe sdl 30

/home/pi/SindenLightgunLinux/DeviceScripts/p1-remove.sh