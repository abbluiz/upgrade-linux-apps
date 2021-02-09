#!/bin/bash

if [[ $EUID -ne 0 ]]; then

   echo "Error: Must be run as root" >&2
   exit 1

fi

source ula.conf

# Check for custom config
if [ -e "custom.conf" ]; then

    echo "Applying custom config..."
    source custom.conf

fi

for i in ${script[@]} 
do 

    if [ -x "$installPath/$i" ]; then

        rm "$installPath/$i"
        
    fi

done

echo "All ula scripts uninstalled."