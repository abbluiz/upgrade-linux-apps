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

~/.ula-tmp/upgrade-linux-apps/ula-install.sh

rm -rf ~/tmp