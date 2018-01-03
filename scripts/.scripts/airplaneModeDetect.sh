#!/bin/bash

rfkillString="`rfkill | grep wlan`"

if [ "${rfkillString:20:9}" == "unblocked" ]; then
	echo 0
else
	echo 1
fi
