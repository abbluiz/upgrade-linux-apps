#!/bin/bash

scriptName="uninstall-ula"

if [[ $EUID -ne 0 ]]; then

   echo "$scriptName error: This script must be run as root" 
   exit 1

fi

source ula.conf

for i in ${script[@]} 
do 

    if [ -x "$installPath/$i" ]; then

        rm "$installPath/$i"
        
    fi

done

echo "All ula scripts uninstalled."