#!/bin/bash

if [[ $EUID -ne 0 ]]; then

   echo "Error: Must be run as root." >&2
   exit 1
   
fi

source ula.conf

# Check for custom config
if [ -e "custom.conf" ]; then

    echo "Applying custom config..."
    source custom.conf

fi

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
