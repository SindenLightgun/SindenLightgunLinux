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

##
# This is no longer copied, leave this in here to
# clean up older installs for one version
echo "Reminder to devs - remove this after next version after (1.5.3)"
rm -rf bin/RetroArchPatch

## remove udev rules
#
echo ""
echo ""
echo "Cleaning Sinden udev rules"
sudo rm -rf /etc/udev/rules.d/*sinden-lightgun*