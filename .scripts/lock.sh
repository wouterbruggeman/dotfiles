#!/bin/sh

FILE=$XDG_CACHE_HOME/dotfiles/profile
CLOCK_X=$(sed '2q;d' $FILE)
CLOCK_Y=$(sed '3q;d' $FILE)

#Execute the lock application
i3lock --blur=5 --screen=1 \
--force-clock --timepos="$CLOCK_X:$CLOCK_Y" --timesize=60 --time-font=DejaVu Sans Mono \
--date-font=DejaVu Sans Mono --datesize=28 --datestr="%d-%m-%Y" \
--datecolor=ffffffff --timecolor=ffffffff \
--noinputtext="" --veriftext="" \
