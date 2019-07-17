#!/bin/sh

CURRENT_STATE=`amixer get Master | egrep 'Playback.*?\[o' | egrep -o '\[o.+\]'`

if [[ $CURRENT_STATE == '[on]' ]]; then
	amixer set Master mute
	playerctl pause
else
	amixer set Master unmute
	amixer set Headphone unmute
	amixer set Speaker unmute
fi
