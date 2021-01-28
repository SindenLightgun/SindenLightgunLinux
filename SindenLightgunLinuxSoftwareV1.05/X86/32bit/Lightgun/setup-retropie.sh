cp -v RetroPieScripts/Ports/*.sh /home/pi/RetroPie/roms/ports/
cp -v Borders/RetroArchBorders/* /opt/retropie/emulators/retroarch/overlays/
for f in /home/pi/RetroPie/roms/ports/SindenLightgun*; do chmod -v 777 $f; done
