#!/bin/sh

# Get resource
XRESOURCE_VALUE=$(xrdb -query -all | grep $1)

# Split into array
KEY_VALUE=($(echo $XRESOURCE_VALUE | tr ' ' "\n"))

# Get value
VALUE=${KEY_VALUE[1]}

echo $VALUE
