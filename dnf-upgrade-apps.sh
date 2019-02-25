#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

echo "LABB dnf-upgrade-apps"
sleep 1

dnf -y check-update ; dnf -y upgrade ; dnf -y autoremove
