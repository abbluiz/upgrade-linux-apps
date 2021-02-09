#!/bin/bash

if [[ $EUID -ne 0 ]]; then

   echo "Error: Must be run as root." >&2
   exit 1

fi

# TODO verify internet access

source ula.conf

# Check for custom config
if [ -e "custom.conf" ]; then

    echo "Applying custom config..."
    source custom.conf

fi

if [ ! -e "~/$ulaTempDir" ]; then

    mkdir ~/$ulaTempDir

else

    rm -rf ~/$ulaTempDir
    mkdir ~/$ulaTempDir
    
fi

git clone $ulaGitRepo ~/$ulaTempDir

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
    install "$HOME/$ulaTempDir/$i.sh" "$installPath/$i"

done

echo "Deleting temporary directory $HOME/$ulaTempDir"
rm -rf ~/$ulaTempDir

echo "All ula scripts updated from git."