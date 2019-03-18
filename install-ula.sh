#!/bin/bash

if [[ $EUID -ne 0 ]]; then

   echo "install-ula error: This script must be run as root." 
   exit 1
   
fi

source ula.conf

for i in ${script[@]}
do 

    report="Installing/Updating"
    updatingOrInstalling $report $installPath $i
    echo "$report $i..."
    install "./$i.sh" "$installPath/$i"

done

echo "All ula scripts installed and updated."