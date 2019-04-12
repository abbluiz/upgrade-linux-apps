#!/bin/bash

scriptName="install-ula"

if [[ $EUID -ne 0 ]]; then

   echo "$scriptName error: This script must be run as root." 
   exit 1
   
fi

source ula.conf

updatingOrInstalling() {

    if [ -x "$2/$3" ]; then
        report="Updating"
    else
        report="Installing"
    fi

}

for i in ${script[@]}
do 

    report="Installing/Updating"
    updatingOrInstalling $report $installPath $i
    echo "$report $i..."
    install "./$i.sh" "$installPath/$i"

done

echo "All ula scripts installed and updated."