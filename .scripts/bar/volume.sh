#!/bin/sh

# Icons
ICON_MUTED=""
ICON_DEFAULT=""

# Get status
AMIXER_OUTPUT=$(amixer get Master)
VOLUME=$(echo $AMIXER_OUTPUT | awk -F"[][]" '/dB/ { print $2 }')
CURRENT_STATE=$(echo $AMIXER_OUTPUT | egrep 'Playback.*?\[o' | egrep -o '\[o.+\]')

if [[ $CURRENT_STATE == '[off]' ]]; then
	echo $ICON_MUTED
else
	echo $ICON_DEFAULT $VOLUME
fi

