#!/bin/sh


#Get the first argument
THEME=$1
if [ -z "$THEME" ]
then
	THEME="default"
fi

#Set the background theme
BG_FOLDER="$HOME/media/backgrounds/$THEME/"

#Set a random image as background
ls $BG_FOLDER | sort -R | tail -n 1 | while read file; do
	#Set as background with feh
	feh --no-fehbg --bg-fill $BG_FOLDER$file &
done
