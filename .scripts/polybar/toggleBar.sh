#!/bin/sh

PID=$(pidof polybar)

if [[ -n $PID ]]; then
	#Not empty, kill the bar
	pkill polybar
else
	#Empty pid, instantiate the bar
	polybar main &
fi
