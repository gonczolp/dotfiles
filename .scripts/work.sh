#!/bin/sh
killall picom
xrandr --newmode "2560x1440_40.00"  200.80  2560 2712 2984 3408  1440 1441 1444 1473  -HSync +Vsync
xrandr --addmode HDMI1 "2560x1440_40.00"
xrandr --output VIRTUAL1 --off --output DP3 --off --output DP2 --off --output DP1 --off --output HDMI1 --mode "2560x1440_40.00" --pos 1600x0 --rotate normal --output HDMI2 --off --output HDMI3 --off --output LVDS1 --primary --mode 1600x900 --pos 0x0 --rotate normal --output VGA1 --off
picom -b
i3-msg restart
