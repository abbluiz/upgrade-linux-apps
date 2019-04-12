#!/bin/bash

scriptName="ula-what"

if hash apt 2>/dev/null; then

	echo "aptitude"

elif hash dnf 2>/dev/null; then

	echo "dnf"

else

	echo "$scriptName error: Package manager not found or not supported."
	exit 1
	
fi