#!/bin/sh

#Profile variables
$(~/.scripts/profiles/setProfileVariables.sh work 2880 270)

#Screenlayout
$(~/.screenlayout/work.sh)
sleep 1s
$(xrandr)
