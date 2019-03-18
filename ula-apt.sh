#!/bin/bash

if [[ $EUID -ne 0 ]]; then

   echo "ula-apt error: This script must be run as root." 
   exit 1
   
fi

if [ $1 == "upgrade" ]; then

    echo "apt will try to upgrade your apps..."
    apt -y update ; apt -y upgrade ; apt -y autoremove ; apt -y autoclean

elif [ $1 == "install" ]; then

    echo "apt will try to install the following apps:"
    # TODO print apps to be installed
    # Make apt install these apps

elif [ $1 == "remove" ]; then

    echo "apt will try to remove the following apps:"
    # TODO print apps to be removed
    # Make apt remove these apps

else

    echo "ula-apt error: Invalid arguments."
    exit 1

fi
