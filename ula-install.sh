#!/bin/bash

if [[ $EUID -ne 0 ]]; then

   echo "ula-install error: This script must be run as root." 
   exit 1

fi

if hash apt 2>/dev/null; then

	ula-apt install $@

elif hash dnf 2>/dev/null; then

	ula-dnf install $@

else

	echo "ula-install error: Package manager not found or not supported."

fi