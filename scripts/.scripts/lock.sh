#!/bin/bash

IMAGE=/tmp/i3lock.png
scrot $IMAGE

convert $IMAGE -blur 0x05 $IMAGE
convert -pointsize 200 -fill white -draw 'text 600,600 "LOCKED" ' $IMAGE $IMAGE

i3lock -u -i $IMAGE
rm $IMAGE
