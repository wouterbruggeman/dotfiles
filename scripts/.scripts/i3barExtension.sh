#!/bin/bash

i3status | while :
do
	read -r line
	airplaineMode=`sh -c ~/.scripts/airplaneModeDetect.sh`
	echo -e "$airplaineMode | $line" || exit 1
done
