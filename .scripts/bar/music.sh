#!/bin/sh

# Icons
ICON_PAUSED=""
ICON_PLAYING=""
ICON_ST



# Commands
STATUS=$(playerctl status 2>&1)
TITLE=$(playerctl metadata title 2>&1)
ARTIST=$(playerctl metadata artist 2>&1)



if [[ $STATUS == 'No players found' ]]; then
	exit
else
	if [ $STATUS == 'Paused' ]; then
		STATUS_ICON=$ICON_PAUSED
	elif [ $STATUS == 'Playing' ]; then
		STATUS_ICON=$ICON_PLAYING
	fi

	echo "$STATUS_ICON $ARTIST, $TITLE"
fi
