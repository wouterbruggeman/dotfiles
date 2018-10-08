#!/bin/sh
i3lock \
	--blur=8 \
	--ignore-empty-password \
	--force-clock \
	--verifcolor=00000000 \
	--wrongcolor=00000000 \
	--insidecolor=00000000 --insidevercolor=00000000 \
	--insidewrongcolor=00000000 \
	--ringcolor=00000000 --ringvercolor=FFFFFF80 \
	--ringwrongcolor=CF262380 \
	--keyhlcolor=FFFFFF80 --bshlcolor=CF262380 \
	--linecolor=00000000 --separatorcolor=00000000 \
	--timesize=80 --datesize=25 \
	--timestr="%H:%M" --datestr="%A, %B %e" \
	--timepos="ix:iy-200" --datepos="ix:iy-160" \
	--timecolor=FFFFFFC0 --datecolor=FFFFFF80 \
	--time-font="sans-serif" --date-font="sans-serif" \
