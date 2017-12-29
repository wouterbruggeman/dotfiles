#!/bin/sh

bri="`cat /sys/class/backlight/intel_backlight/brightness`"

if [ $1 -gt 0 ]; then	
	echo "`echo $bri + 90 | bc`" > "/sys/class/backlight/intel_backlight/brightness"
else
	echo "`echo $bri - 90 | bc`" > "/sys/class/backlight/intel_backlight/brightness"
fi
