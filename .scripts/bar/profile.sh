#!/bin/sh

PROFILE_NAME=$(sed '1q;d' $XDG_CACHE_HOME/dotfiles/profile)

if [[ $PROFILE_NAME == 'laptop' ]]; then
	echo ""
elif [[ $PROFILE_NAME == 'home' ]]; then
	echo ""
elif [[ $PROFILE_NAME == 'work' ]]; then
	echo ""
fi
