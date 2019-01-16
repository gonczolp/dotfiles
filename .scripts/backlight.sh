#!/bin/bash

val=$(xbacklight | awk '{print int(($0 + 2.5) / 5) * 5}')

echo "<span font='8' font_family='Font Awesome 5 Free'></span> <span letter_spacing='-1024'>$val</span>"

