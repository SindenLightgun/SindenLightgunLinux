[Main README](README.md)

# Example Configs

## Per Rom Config

### Duck Hunt (NES)

- Game Overide
- Properly sets up trigger and LEFT-FRONT button as game selector
- /opt/retropie/configs/all/retroarch/config/FCEUmm/'Duck Hunt (World).cfg'

```
aspect_ratio_index = "22"
input_overlay = "~/.config/retroarch/overlay/SindenBorderWhiteMedium_Wide.cfg"
menu_show_advanced_settings = "true"

## Assumes mouse0
input_player1_select_mbtn = "2"
input_player2_gun_trigger_mbtn = "1"
```

- Control remap (which can be configured in the Retroarch UI)
- vi /opt/retropie/configs/nes/FCEUmm/Duck\ Hunt\ (World).rmp

```
input_libretro_device_p1 = "1"
input_libretro_device_p2 = "258"
input_libretro_device_p3 = "1"
input_libretro_device_p4 = "1"
input_libretro_device_p5 = "1"
input_player1_analog_dpad_mode = "1"
input_player2_analog_dpad_mode = "1"
input_player3_analog_dpad_mode = "1"
input_player4_analog_dpad_mode = "1"
input_player5_analog_dpad_mode = "0"
```