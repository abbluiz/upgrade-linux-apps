#!/bin/bash

if [[ $EUID -ne 0 ]]; then

   echo "Error: Must be run as root." >&2 
   exit 1
   
fi

if [ $1 == "upgrade" ]; then

    echo "dnf will try to upgrade your apps..."
    dnf -y check-update ; dnf -y upgrade ; dnf -y autoremove ; dnf -y clean packages

elif [ $1 == "install" ]; then

    echo "dnf will try to install the following apps:"
    # TODO print apps to be installed
    # Make dnf install these apps

elif [ $1 == "remove" ]; then

    echo "dnf will try to remove the following apps:"
    # TODO print apps to be removed
    # Make dnf remove these apps

else

    echo "Usage: $0 upgrade|install|remove" >&2
    exit 1

fi
