#!/bin/sh

bri="`cat /sys/class/backlight/intel_backlight/brightness`"

if [ $1 -gt 0 ]; then
	for i in {1..10}
	do
		amount=$i*10
		echo "`echo $bri + $amount | bc`" > "/sys/class/backlight/intel_backlight/brightness"
		sleep 0.01s
	done
else
	for i in {1..10}
	do
		amount=$i*10
		echo "`echo $bri - $amount | bc`" > "/sys/class/backlight/intel_backlight/brightness"
		sleep 0.01s
	done
fi
