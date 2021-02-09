#!/bin/bash

if [[ $EUID -ne 0 ]]; then

   echo "Error: Must be run as root." >&2 
   exit 1

fi

if hash apt 2>/dev/null; then

	ula-apt upgrade

elif hash dnf 2>/dev/null; then

	ula-dnf upgrade

else

	echo "Error: Package manager not found or not supported." >&2
	exit 1

fi