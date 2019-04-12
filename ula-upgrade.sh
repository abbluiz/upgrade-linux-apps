#!/bin/bash

scriptName="ula-upgrade"

if [[ $EUID -ne 0 ]]; then

   echo "$scriptName error: This script must be run as root." 
   exit 1

fi

if hash apt 2>/dev/null; then

	ula-apt upgrade

elif hash dnf 2>/dev/null; then

	ula-dnf upgrade

else

	echo "$scriptName error: Package manager not found or not supported."

fi