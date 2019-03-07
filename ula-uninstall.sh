#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

installPath="/usr/local/bin"

script[0]="ula-update-from-git"
script[1]="upgrade-linux-apps"
script[2]="apt-upgrade-apps"
script[3]="dnf-upgrade-apps"
script[4]="ula-uninstall"

for i in ${script[@]} 
do 
    if [ -x "$installPath/$i" ]; then
        rm "$installPath/$i"
    fi
done

echo "upgrade-linux-apps uninstalled."