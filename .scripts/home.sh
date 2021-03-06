#!/bin/sh

killall picom

xrandr \
	--output VIRTUAL1 --off \
	--output DP3 --off \
	--output DP2 --off \
	--output DP1 --off \
	--output HDMI3 --off \
	--output HDMI2 --off \
	--output HDMI1 --off \
	--output LVDS1 --off \
	--output VGA1 --primary --pos 0x0 --rotate normal --mode 1920x1200

picom -b

i3-msg restart

