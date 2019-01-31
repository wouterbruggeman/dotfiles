#!/bin/sh

if [ $1 -eq 0 ];
then
	amixer -q -M set Master 2%-
else
	amixer -q -M set Master 2%+
fi
