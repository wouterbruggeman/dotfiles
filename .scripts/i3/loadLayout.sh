#!/bin/sh

WS=$1
if [ -z "$WS" ]
then
	WS=1
fi

WS_PATH="$HOME/.config/i3/layouts/ws_$WS"

#Append to workspace and fill
i3-msg "workspace $WS; append_layout $WS_PATH/layout.json"
$($WS_PATH/fill.sh)
