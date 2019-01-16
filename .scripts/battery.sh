#!/bin/bash

battery="BAT0"

# exit if cannot find battery
capacity=$(cat /sys/class/power_supply/$battery/capacity) || exit
status=$(cat /sys/class/power_supply/$battery/status)

icon=""
if [ "$status" = "Discharging" ]; then
	if [ "$capacity" -ge 80 ]; then
		icon=""
	elif [ "$capacity" -ge 60 ]; then
		icon=""
	elif [ "$capacity" -ge 40 ]; then
		icon=""
	elif [ "$capacity" -ge 20 ]; then
		icon=""
	else
		icon=""
	fi
fi

echo "<span font='8' font_family='Font Awesome 5 Free'>$icon</span> <span letter_spacing='-1024'>$capacity</span>"

