#!/bin/bash

resolution=$(xdpyinfo | awk '/dimensions/{print $2}')
lockpng=~/lock-$resolution.png

if [ ! -f $lockpng ];
then
    convert ~/wallpaper.jpg \
            -scale "$resolution^" \
            -fill black -colorize 50% \
            -font System-San-Francisco-Display \
            -fill "#ffffff33" \
            -gravity center -pointsize 30 -annotate +0-200 'A man sees in the world what he carries in his heart. — Goethe' \
            $lockpng
fi

playerctl pause

i3lock -e -f -c 000000 -i $lockpng
