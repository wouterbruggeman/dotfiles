#!/bin/sh

if [[ $1 = 'laptop' ]]; then
	# Kill the virtual output
	pkill intel-virtual-o
else
	# Start the virtual output
	optirun intel-virtual-output
fi

# Start the monitor script
sh ~/.scripts/monitors/$1.sh
