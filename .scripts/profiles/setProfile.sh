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
sh ~/.scripts/profiles/$PROFILE.sh

# Pick a random background
sh -c "~/.scripts/background.sh"

# Write the current selected profile to a file
#mkdir $XDG_CACHE_HOME/dotfiles/
echo $PROFILE > $XDG_CACHE_HOME/dotfiles/profile
