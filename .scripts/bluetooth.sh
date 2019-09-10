#!/bin/sh

#Power on the bluetooth device
bluetoothctl -- power on

#Attempt to connect
bluetoothctl -- connect 6C:5D:63:20:CD:A0
