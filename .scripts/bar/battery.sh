#!/bin/sh

# Icons
ICON_CHARGING=""
ICON_FULL=""
ICON_75=""
ICON_50=""
ICON_25=""
ICON_EMPTY=""

# Colors
COLOR_ALERT="color1"
COLOR_DEFAULT="foreground"

# The battery folder
FOLDER="/sys/class/power_supply/BAT0"

# Get status and charge data
STATUS=$(cat $FOLDER/status)
CHARGE_FULL=$(cat $FOLDER/charge_full)
CHARGE_NOW=$(cat $FOLDER/charge_now)
CHARGE_PERCENTAGE=$(bc -l <<< "scale=2; ($CHARGE_NOW / $CHARGE_FULL) * 100")
CHARGE_PERCENTAGE=${CHARGE_PERCENTAGE%.*}

# Set the text color
TEXT_COLOR=$(~/.scripts/get_xresources_value.sh $COLOR_DEFAULT)

# Set the status icon
if [[ $STATUS == 'Charging' ]]; then
	STATUS_ICON=$ICON_CHARGING
else
	if [ $CHARGE_PERCENTAGE -ge 0 ] && [ $CHARGE_PERCENTAGE -lt 25 ];then
		STATUS_ICON=$ICON_EMPTY
		TEXT_COLOR=$(~/.scripts/get_xresources_value.sh $COLOR_ALERT)
	elif [ $CHARGE_PERCENTAGE -ge 25 ] && [ $CHARGE_PERCENTAGE -lt 50 ];then
		STATUS_ICON=$ICON_25
	elif [ $CHARGE_PERCENTAGE -ge 50 ] && [ $CHARGE_PERCENTAGE -lt 75 ];then
		STATUS_ICON=$ICON_50
	elif [ $CHARGE_PERCENTAGE -ge 75 ] && [ $CHARGE_PERCENTAGE -lt 100 ];then
		STATUS_ICON=$ICON_75
	elif [ $CHARGE_PERCENTAGE -eq 100 ];then
		STATUS_ICON=$ICON_FULL
	fi
fi

# Full Text
echo $STATUS_ICON $CHARGE_PERCENTAGE%

# Short Text
echo $CHARGE_PERCENTAGE%

# Text color
echo $TEXT_COLOR
