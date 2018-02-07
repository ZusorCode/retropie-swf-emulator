#!/usr/bin/env bash
NEWCFG=
EXISTINGCFG=/etc/emulationstation/es_systems.cfg
read -p "This script has not been tested! Are you sure you want to do this? " -n 1 -r
echo    
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
    sudo apt-get gnash
    sudo cp /etc/emulationstation/es_systems.cfg /opt/retropie/configs/all/emulationstation/es_systems.cfg.
    cat "$NEWCFG" >> "$EXISTINFCFG"
fi


