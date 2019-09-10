#!/bin/sh

if [[ $1 = 'laptop' ]]; then
	# Kill the virtual output
	pkill intel-virtual-o
else
	# Start the virtual output
	optirun intel-virtual-output
fi

# Start the profile script
sh ~/.scripts/profiles/$1.sh
