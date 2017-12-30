#!/bin/bash

xrandrString="`xrandr | grep "HDMI-0 disconnected"`"

if [ "${xrandrString}" == "" ]; then
	# There is an external display connected
	xrandr --output HDMI-0 --auto --right-of eDP-1-1
else
	# There is no external display connected
	xrandr --auto 
fi
