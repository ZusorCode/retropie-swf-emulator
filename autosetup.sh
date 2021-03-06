#!/usr/bin/env bash
echo "You should edit the new_es_systems.cfg to use the path where you want to store your swf files!"
echo "Default is /home/pi/RetroPie/roms/swf"
NEWCFG="new_es_systems.cfg"
EXISTINGCFG="/etc/emulationstation/es_systems.cfg"

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
read -p "Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
    echo "I warned you!"
    echo "Installing gnash"
    sudo apt-get install gnash
    echo "Making Backup of default es_systems.cfg at /opt/retropie/configs/all/emulationstation/es_systems.cfg"
    sudo cp /etc/emulationstation/es_systems.cfg /opt/retropie/configs/all/emulationstation/es_systems.cfg
    echo "Adding the player to Retropie"
    sed -i '$ d' $EXISTINGCFG
    sudo cat new_es_systems.cfg >> /etc/emulationstation/es_systems.cfg
    echo "Creating Rom Folder"
    mkdir  /home/pi/RetroPie/roms/swf
else
  echo "Cancelled"
fi

echo "Done"
