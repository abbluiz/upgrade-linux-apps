#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

installPath="/usr/local/bin"

script0="ula-update-from-git"
script1="upgrade-linux-apps"
script2="apt-upgrade-apps"
script3="dnf-upgrade-apps"

if [ -x "$installPath/$script0" -o -x "$installPath/$script1" -o -x "$installPath/$script2" -o -x "$installPath$script3" ]; then
    echo "Updating ula scripts on $installPath folder..."
else
    echo "Installing ula scripts on $installPath folder..."
fi

    install "$script0.sh" "$installPath/$script0"
    install "$script1.sh" "$installPath/$script1"
    install "$script2.sh" "$installPath/$script2"
    install "$script3.sh" "$installPath/$script3"