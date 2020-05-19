#!/bin/sh
killall picom
xrandr --output LVDS1 --off --output DP1 --off --output DP2 --off --output DP3 --off --output HDMI1 --off --output HDMI2 --off --output HDMI3 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VGA1 --off --output VIRTUAL1 --off
picom -b
i3-msg restart
