#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

echo "apt will upgrade your apps..."
sleep 1

apt -y update ; apt -y upgrade ; apt -y autoremove ; apt -y autoclean
