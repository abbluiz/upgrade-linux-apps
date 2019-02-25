#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

echo "LABB apt-upgrade-apps"
sleep 1

apt -y update ; apt -y upgrade ; apt -y autoremove ; apt -y autoclean
