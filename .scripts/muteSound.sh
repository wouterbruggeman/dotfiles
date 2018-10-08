#!/bin/sh

master="`amixer get Master | grep off`"

if [ -z "${master}" ]; then
	amixer -q set Master mute
	amixer -q set Headphone mute
	amixer -q set Speaker mute
	sh ~/.scripts/showIcon.sh volumeMute.png
else
	amixer -q set Master unmute
	amixer -q set Headphone unmute
	amixer -q set Speaker unmute
	sh ~/.scripts/showIcon.sh volumeUp.png
fi
