#!/bin/bash

power=$(bluetoothctl show | grep Powered | awk '{print $2}')
if [ "$power" == "no" ]; then
	exit
fi

device=$(bluetoothctl info | grep Name | awk '{print $2}')

if [ -z "$device" ]; then
	displayed=""
else
#	displayed="<span color='#7c6f64'> </span>$device"
	displayed=" $device"
fi

echo "<span letter_spacing='-512'><span color='#83a598'>blu</span>$displayed</span>"
