#!/bin/sh

#Clock default position
CLOCK_X=960
CLOCK_Y=270

#Get the current profile
PROFILE=$(cat $XDG_CACHE_HOME/dotfiles/profile)

#Set different position while the work profile is active
if [[ $PROFILE = 'work' ]]; then
	CLOCK_Y=900
fi

#Execute the lock application
i3lock --blur=5 --screen=1 \
--force-clock --timepos="$CLOCK_X:$CLOCK_Y" --timesize=60 --time-font=DejaVu Sans Mono \
--date-font=DejaVu Sans Mono --datesize=28 --datestr="%d-%m-%Y" \
--datecolor=ffffffff --timecolor=ffffffff \
--noinputtext="" --veriftext="" \
