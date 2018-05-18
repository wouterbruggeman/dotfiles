#!/bin/sh

#Settings:
TIMEOUT=0.5

#Show the image
feh ~/Images/icons/$1 -g 200x200+860+800 -B white -N &

#Kill the process
PID=$!
sleep $TIMEOUT
kill -9 $PID
