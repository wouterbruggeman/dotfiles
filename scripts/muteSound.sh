#!/bin/sh

master="`amixer get Master | grep off`"

if [ -z "${master}" ]; then
	amixer -q set Master mute
else
	amixer -q set Master unmute
	amixer -q set Speaker unmute
	echo 1
fi
