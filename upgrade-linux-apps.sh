#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

if hash apt 2>/dev/null; then
	apt-upgrade-apps
elif hash dnf 2>/dev/null; then
	dnf-upgrade-apps
else
	echo "Package manager not found or not supported."
fi