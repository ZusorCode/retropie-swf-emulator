#!/usr/bin/env bash
echo "You should edit the new_es_systems.cfg to use the path where you want to store your swf files!"
NEWCFG=new_es_systems.cfg
EXISTINGCFG=/etc/emulationstation/es_systems.cfg

read -p "This script has not been tested! Are you sure you want to do this? " -n 1 -r
echo    
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
    echo "I warned you!"
    echo "Installing gnash"
    sudo apt-get gnash
    echo "Making Backup of default es_systems.cfg at /opt/retropie/configs/all/emulationstation/es_systems.cfg"
    sudo cp /etc/emulationstation/es_systems.cfg /opt/retropie/configs/all/emulationstation/es_systems.cfg.
    echo "Adding the player to "
    sudo cat "$NEWCFG" >> "$EXISTINFCFG"
    echo
fi


