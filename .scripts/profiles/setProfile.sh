#!/bin/sh

PROFILE=$1

if [[ $PROFILE = 'laptop' ]]; then
	# Kill the virtual output
	pkill intel-virtual-o
else
	# Start the virtual output
	optirun intel-virtual-output
fi

# Start the profile script
$(~/.scripts/profiles/$PROFILE.sh)

# Pick a random background
$(~/.scripts/background.sh)
