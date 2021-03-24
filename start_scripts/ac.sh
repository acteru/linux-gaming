#!/bin/bash
export WINEDEBUG=-all WINEFSYNC=0 WINEESYNC=1 VKD3D_DEBUG=none VKD3D_SHADER_DEBUG=none
export WINEPREFIX=$HOME/AssassinsCreed/.wine
export DXVK_CONFIG_FILE=$HOME/AssassinsCreed/dxvk.conf

#wine "${WINEPREFIX}/drive_c/Program Files (x86)/Ubisoft/Ubisoft Game Launcher/UbisoftConnect.exe"
wine "${WINEPREFIX}/drive_c/Program Files (x86)/Ubisoft/Ubisoft Game Launcher/games/Assassin's Creed Valhalla/ACValhalla.exe"
