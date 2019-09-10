#!/bin/sh

BG_FOLDER="$HOME/media/backgrounds/private/"

#Set a random image as background
ls $BG_FOLDER | sort -R | tail -n 1 | while read file; do
	#Set as background with feh
	feh --no-fehbg --bg-fill $BG_FOLDER$file &
done
