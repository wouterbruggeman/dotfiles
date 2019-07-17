#!/bin/sh

STATUS=$(playerctl status 2>&1)
TITLE=$(playerctl metadata title 2>&1)
ARTIST=$(playerctl metadata artist 2>&1)

if [[ $STATUS != 'No players found' ]]; then
	echo "$STATUS : $ARTIST, $TITLE"
else
	echo ""
fi
