#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

if [ ! -e "~/.ula-tmp" ]; then
    mkdir ~/.ula-tmp
else
    rm -rf ~/.ula-tmp
    mkdir ~/.ula-tmp
fi

git clone https://github.com/abbluiz/upgrade-linux-apps.git ~/.ula-tmp

# TODO: diff

installPath="/usr/local/bin"

script[0]="ula-update-from-git"
script[1]="upgrade-linux-apps"
script[2]="apt-upgrade-apps"
script[3]="dnf-upgrade-apps"
script[4]="ula-uninstall"

updatingOrInstalling() {

    if [ -x "$2/$3" ]; then
        report="Updating"
    else
        report="Installing"
    fi

}

for i in ${script[@]}
do 

    report="Installing/Updating"
    updatingOrInstalling $report $installPath $i
    echo "$report $i..."
    install "$HOME/.ula-tmp/$i.sh" "$installPath/$i"

done

echo "Deleting temporary directory $HOME/.ula-tmp"
rm -rf ~/.ula-tmp

echo "All scripts updated from git."