#!/bin/bash

if hash apt 2>/dev/null; then

	echo "aptitude"

elif hash dnf 2>/dev/null; then

	echo "dnf"

else

	echo "Error: Package manager not found or not supported." >&2
	exit 1
	
fi