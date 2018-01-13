#!/bin/sh
i3lock -B 8 -e \
	--textcolor=00000000 \
	--insidecolor=00000000 --insidevercolor=00000000 \
	--insidewrongcolor=00000000 \
	--ringcolor=00000000 --ringvercolor=FFFFFF80 \
	--ringwrongcolor=CF262380 \
	--keyhlcolor=FFFFFF80 --bshlcolor=CF262380 \
	--linecolor=00000000 --separatorcolor=00000000 \
	-k \
	--timefont="sans-serif" --datefont="sans-serif" \
	--timesize=60 --datesize=20 \
	--timestr="%H:%M" --datestr="%A, %B %e" \
	--timepos="ix-200:iy-250" --datepos="ix-200:iy-215" \
	--timecolor=FFFFFFC0 --datecolor=FFFFFF80
