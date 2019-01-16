#!/bin/sh

case $BLOCK_BUTTON in
	1) $TERMINAL -e nmtui ;;
esac

ssid=$(iwgetid -r) || exit

echo "<span font='8' font_family='Font Awesome 5 Free'></span> $ssid"

