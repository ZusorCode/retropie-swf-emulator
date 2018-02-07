#!/usr/bin/env bash
echo "You should edit the new_es_systems.cfg to use the path where you want to store your swf files!"
echo "Default is /home/pi/RetroPie/roms/swf"
NEWCFG=new_es_systems.cfg
EXISTINGCFG=/etc/emulationstation/es_systems.cfg

if [ -f "$NEWCFG" ]
then
    echo "Found new_es_systems.cfg"
else
    echo "Could not find new_es_systems.cfg"
    echo "Strongly recommended not to continue!!!"
fi
if [ -e "$EXISTINGCFG" ]
then
    echo "Found es_systems.cfg"
else
    echo "Could not find existing es_systems.cfg"
    echo "Strongly recommended not to continue!!!"
    echo "Please change the path of the location in this script!"
fi

read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
    echo "I warned you!"
    echo "Installing gnash"
    sudo apt-get gnash
    echo "Making Backup of default es_systems.cfg at /opt/retropie/configs/all/emulationstation/es_systems.cfg"
    sudo cp /etc/emulationstation/es_systems.cfg /opt/retropie/configs/all/emulationstation/es_systems.cfg.
    echo "Adding the player to Retropie"
    sed -i '$ d' $EXISTINGCFG
    sudo cat "$NEWCFG" >> "$EXISTINFCFG"
    echo "Creating Rom Folder"
    mkdir /home/pi/RetroPie/roms/nes
    
fi
echo "Done"
