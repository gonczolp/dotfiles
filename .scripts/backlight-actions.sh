#!/bin/bash

case "$1" in
	u*) xbacklight -inc 5 ;;
	d*) xbacklight -dec 5 ;;
esac

pkill -RTMIN+11 i3blocks

