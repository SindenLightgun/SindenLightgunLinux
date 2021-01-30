#!/bin/bash

##
# Currently not implemented for auto-detect until
# I can figure out how to distinguish the two devices in UDEV
#
echo /home/pi/RetroPie/roms/ports/SindenLightgun-P2Start.sh | at -t `date --date='5 seconds' "+%m%d%H%M.%S"`