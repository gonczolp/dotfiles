#!/bin/bash

sink=$( pactl list short sinks | sed -e 's,^\([0-9][0-9]*\)[^0-9].*,\1,' | head -n 1 )

case "$1" in
	u*) pactl set-sink-volume ${sink} +5% ;;
	d*) pactl set-sink-volume ${sink} -5% ;;
	m*) pactl set-sink-mute ${sink} toggle ;;
esac

pkill -RTMIN+10 i3blocks

