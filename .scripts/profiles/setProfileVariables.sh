#!/bin/sh

FILE=$XDG_CACHE_HOME/dotfiles/profile

PROFILE_NAME=$1
CLOCK_X=$2
CLOCK_Y=$3

echo $PROFILE_NAME > $FILE
echo $CLOCK_X >> $FILE
echo $CLOCK_Y >> $FILE
