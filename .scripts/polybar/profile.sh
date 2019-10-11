#!/bin/sh

PROFILE=$(cat $XDG_CACHE_HOME/dotfiles/profile)

if [[ $PROFILE == 'laptop' ]]; then
	echo ""
elif [[ $PROFILE == 'home' ]]; then
	echo ""
elif [[ $PROFILE == 'work' ]]; then
	echo ""
fi
