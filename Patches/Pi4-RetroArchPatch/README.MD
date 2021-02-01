This is a patch to fix the following bug:

There is a very annoying lightgun bug in RetroArch currently on the Pi4, it utilises the X11 codebranch for lightgun support and does a weird thing where the cursor is slightly off to the side BUT as soon as you go all the way to the left hand screen it lines up.  I haven’t been able to work out why, but the solution is to use the non X11 code branch for the lightgun support. So you can leave it as it is and just remember to shuffle off to the left side everytime you start a game or you can use my patched version of RetroArch which is just switching a single file, but please remember to back up your original one. The patched file is in the achive with instructions.

I'm actually struggling to recreate this issue, it may have been fixed in the latest RetroArch on RetroPie.

If this happens to you you can patch it like so:

You have 4 options:
1. Put up with the issue by moving to the left every time you start a game.

2. Patch RetroArch, copy the included files over the top of the files located here:
`/opt/retropie/emulators/retroarch/bin` **Back up your original files first.**

3. You can change these lines over in the RetroPie RetroArch install script located here:
`/home/pi/RetroPie-Setup/scriptmodules/emulators/retroarch.sh` **Back up your original files first.**

Then you can update RetroArch from the RetroPie setup option on the frontend. Choose update from source.

Please note the patched version means this patches listed below are disabled because they conflict.  I don't really know what they do but have managed to do everything fine without them for now.

```
function sources_retroarch() {
    gitPullOrClone "$md_build" https://github.com/MrLightgun/RetroArch.git
    //applyPatch "$md_data/01_hotkey_hack.diff"
    //applyPatch "$md_data/02_disable_search.diff"
    //applyPatch "$md_data/03_shader_path_config_enable.diff"
}
```

4. I think if you disable the X11 flag on the setup script it should be OK which is probably the ideal solution for now until an upstream patch.  So I need to test that. Maybe just removing this will do the trick, although haven't analysed what consequences this would have. **Back up your original files first.**

```
isPlatform "x11" && depends+=(libx11-xcb-dev libpulse-dev libvulkan-dev)
```

**Update**, tested this, I "think" it worked but also needed to comment out the apply patches as per the above.
