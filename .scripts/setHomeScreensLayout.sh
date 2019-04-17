#!/bin/sh

# Kill intel-virtual-o if it's already running
pkill intel-virtual-o
# Start intel-virtual-output
optirun intel-virtual-output

# Check if there is a monitor connected
xrandrString="`xrandr | grep "VIRTUAL1 disconnected"`"
if [ "${xrandrString}" == "" ]; then
	# There is an external display connected
	# Apply the home screenlayout and reload the g810-led profile
	sh ~/.screenlayout/home.sh
	g810-led -p ~/.config/g810-led/profile
else
	# There is no external display connected, apply the no_hdmi layout
	sh ~/.screenlayout/no_hdmi.sh

	# Kill the intel virtual output process. It's not needed anymore.
	pkill intel-virtual-o
fi

# Always make sure the background looks good.
feh --no-fehbg --bg-fill ~/Images/backgrounds/background_winter.jpg &
