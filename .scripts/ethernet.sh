#!/bin/bash

interface="enp12s0"
[ "$(cat /sys/class/net/${interface}/operstate)" = 'down' ] && exit

addr=$(ip address show dev ${interface} | grep '^\s*inet\s' | awk '{print $2}')

echo "<span font='8' font_family='Font Awesome 5 Free'></span> <span letter_spacing='-1024'>$addr</span>"

