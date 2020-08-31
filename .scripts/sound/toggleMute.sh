#!/bin/sh

CURRENT_STATE=`pulsemixer --get-mute`


if [[ $CURRENT_STATE == 0 ]]; then
	pulsemixer --mute
	playerctl pause
else
	amixer set Master unmute
	amixer set Headphone unmute
	amixer set Speaker unmute
fi
