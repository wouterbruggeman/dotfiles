#!/bin/bash

xrandrString="`xrandr | grep "HDMI-0 disconnected"`"

if [ "${xrandrString}" == "" ]; then
	# There is an external display connected
	xrandr --output HDMI-0 --auto --right-of eDP-1-1
	feh --no-fehbg --bg-fill ~/Images/bg.png --bg-fill ~/Images/bg.png &
else
	# There is no external display connected
	xrandr --auto
	feh --no-fehbg --bg-fill ~/Images/bg.png &
fi
