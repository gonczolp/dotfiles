# load Xresources
xrdb -merge ~/.Xresources

# set keyboard layout
setxkbmap hu

# mute delete beep
xset -b

# cursor move rate
xset r rate 300 30

# run i3wm
exec i3
