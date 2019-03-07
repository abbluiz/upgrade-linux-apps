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

if [ -x "$installPath/${script[0]}" -o -x "$installPath/${script[1]}" -o -x "$installPath/${script[2]}" -o -x "$installPath/${script[3]}" -o -x "$installPath/${script[4]}" ]; then
    echo "Updating ula scripts on $installPath folder..."
else
    echo "Installing ula scripts on $installPath folder..."
fi

for i in ${script[@]}; do install "$i.sh" "$installPath/$i"; done

echo "upgrade-linux-apps installed."