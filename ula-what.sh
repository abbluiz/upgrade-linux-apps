if hash apt 2>/dev/null; then

	echo "aptitude"

elif hash dnf 2>/dev/null; then

	echo "dnf"

else

	echo "ula-what error: Package manager not found or not supported."
	exit 1
	
fi