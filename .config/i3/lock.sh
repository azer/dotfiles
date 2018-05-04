#!/bin/bash

if [ ! -f /tmp/wallpaperx.png ];
then
    resolution=$(xdpyinfo | awk '/dimensions/{print $2}')
    convert ~/wallpaper.jpg \
            -scale "$resolution^" \
            -fill black -colorize 50% \
            -font System-San-Francisco-Display \
            -fill "#ffffff33" \
            -gravity center -pointsize 30 -annotate +0-200 'A man sees in the world what he carries in his heart. — Goethe' \
            /tmp/wallpaper.png
fi

# Pause music (mocp and mpd):
playerctl pause

# Lock it up!
i3lock -e -f -c 000000 -i /tmp/wallpaper.png

# If still locked after 20 seconds, turn off screen.
#sleep 30 && pgrep i3lock && xset dpms force off
