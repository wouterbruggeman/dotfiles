#!/bin/sh

#Profile variables
$(~/.scripts/profiles/setProfileVariables.sh home 960 270)

#Keyboard colors
g810-led -p ~/.config/g810-led/profile

#Screenlayout
$(~/.screenlayout/home.sh)
sleep 1s
$(xrandr)
