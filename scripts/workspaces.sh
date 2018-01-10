#!/bin/bash

workspaceNames=("1: " "2: " "3: " "4" "5" "6" "7" "8" "9" "10")
color="fcfc00"

g810-led -p ~/.config/g810-led/profile
sleep .01
i3-msg workspace ${workspaceNames[$1 - 1]}
g810-led -k $1 $color
