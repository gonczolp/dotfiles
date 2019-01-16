#!/bin/bash

pac=$(checkupdates 2> /dev/null | wc -l)

echo "<span font='8' font_family='Font Awesome 5 Free'></span> <span letter_spacing='-1024'>$pac</span>"

