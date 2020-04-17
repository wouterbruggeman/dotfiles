#!/bin/sh

# Icons
ICON_DEFAULT=""

INTERFACE="wlo1"

SSID=$(iw dev $INTERFACE link | grep SSID)
SSID=($(echo $SSID | tr ' ' "\n"))
SSID=${SSID[1]}

if [[ $SSID == '' ]]; then
	SSID="Not connected"
fi

echo $ICON_DEFAULT $SSID

