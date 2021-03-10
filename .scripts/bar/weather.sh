#!/bin/sh

WEATHER=$(curl -Ss 'wttr.in/Rotterdam?format=%t+%w')
echo $WEATHER
