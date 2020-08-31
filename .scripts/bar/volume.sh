#!/bin/sh

# Icons
ICON_MUTED=""
ICON_DEFAULT=""

# Get status
MUTED=$(pulsemixer --get-mute)
VOLUME=$(pulsemixer --get-volume)
VOLUME_CHANNELS=($(echo $VOLUME | tr ' ' "\n"))

if [[ $MUTED == 1 ]]; then
	echo $ICON_MUTED
else
	echo $ICON_DEFAULT ${VOLUME_CHANNELS[1]}%
fi

