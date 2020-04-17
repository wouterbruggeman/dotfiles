#!/bin/sh

# Icons
ICON_DEFAULT=""

INTERFACE="eno1"

# Get ip
IP=$(ip address show dev $INTERFACE | grep inet)

# Split into array
IP=($(echo $IP | tr ' ' "\n"))

# Get first element from array
IP=${IP[1]}

# Remove subnet mask bits
IP=($(echo $IP | tr '/' "\n"))
IP=${IP[0]}

# Check if the IP is not empty
if [[ $IP == '' ]]; then
	IP="Not connected"
fi

# Echo the icon and the IP
echo $ICON_DEFAULT $IP
