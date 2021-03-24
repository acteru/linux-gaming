# Linux-gaming
Scripts to create wine prefixes for certain games with dxvk and vkd3d.

All description and scripts are tested on:
- **Wine**: (system wine stable)
- **OS**: Arch-linux
- **GPU**: Nvidia RTX 3080
- **CPU**: AMD Ryzen 9 5950X

## Game-List
- Assassin's Creed Valhalla

## Prerequisites
Get your desired releases of dxvk and if dx12 is requred vkd3d.
- [dxvk](https://github.com/doitsujin/dxvk) dx9/10/11
- [vkd3d](https://github.com/HansKristian-Work/vkd3d-proton) dx12

## AC-Valhalla
### Ready your prefix
```bash
mkdir -p $HOME/Games/AssassinsCreedValhalla

# Setup wineprefix for AssassinsCreed Valhalla (select win10)
WINEPREFIX=$HOME/Games/AssassinsCreedValhalla/.wine winecfg
```

### Install dxvk and vkd3d
Setup scripts can be found within the release packages
```bash
WINEPREFIX=$HOME/Games/AssassinsCreedValhalla/.wine ./setup_dxvk.sh install
WINEPREFIX=$HOME/Games/AssassinsCreedValhalla/.wine ./setup_vkd3d_proton.sh install
```

### Install ubisoft-connect
wget https://ubistatic3-a.akamaihd.net/orbit/launcher_installer/UbisoftConnectInstaller.exe
WINEPREFIX=$HOME/Games/AssassinsCreedValhalla/.wine UbisoftConnectInstaller.exe

Login, download and install the game.

### DXVK-Config
```bash
echo "dxgi.nvapiHack = False" > $HOME/Games/AssassinsCreedValhalla/dxvk.conf
```

### Start the AC-Valhalla
```bash
./start_scripts/ac.sh
```

### Workaround and fixes
- **Game launch failing** The Game DRM checks in with https://public-ubiservices.ubi.com if your distros ca-package does not contain: "DigiCert SHA2 High Assurance Server CA" make sure it is installed.
- **Game runs in slow-motion** There is currently a issue with 3th.Gen Ryzen, disable PSS in your BIOS to fix the issue.
