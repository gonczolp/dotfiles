#!/bin/sh
killall compton
xrandr --output VIRTUAL1 --off --output DP3 --off --output DP2 --off --output DP1 --off --output HDMI3 --mode 1920x1080 --pos 1600x0 --rotate normal --output HDMI2 --off --output HDMI1 --off --output LVDS1 --primary --mode 1600x900 --pos 0x0 --rotate normal --output VGA1 --off
compton -b
i3-msg restart
