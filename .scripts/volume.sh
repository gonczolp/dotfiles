#!/bin/bash

sink=$( pactl list short sinks | sed -e 's,^\([0-9][0-9]*\)[^0-9].*,\1,' | head -n 1 )
vol=$( pactl list sinks | grep '^\s*Volume:' | sed "$(( $sink + 1 ))q;d" | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,' )

case $BLOCK_BUTTON in
	1) pactl set-sink-mute ${sink} toggle ;;
	4) pactl set-sink-volume ${sink} +5% ;;
	5) pactl set-sink-volume ${sink} -5% ;;
esac

# return if muted
muted=$(pactl list sinks | grep Mute | sed "$(($sink + 1))q;d" | sed "s/^\s*Mute:\s*//")
[ "$muted" = "yes" ] && echo "<span color='#7c6f64'>muted</span>" && exit

icon=""
if [ "$vol" -ge "70" ]; then
	icon=""
elif [ "$vol" -lt "30" ]; then
	icon=""
else
	icon=""
fi

echo "<span font='8' font_family='Font Awesome 5 Free'>$icon</span> <span letter_spacing='-1024'>$vol</span>"

