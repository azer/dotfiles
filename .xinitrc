xrdb -merge .Xresources
unclutter -idle 1 &
setterm -blank 0
xset s off
xset -r 135 
feh --bg-fill /home/azer/wallpaper.jpg
setxkbmap tr -variant alt -option lv3:ralt
xrandr --output VGA-1 --auto 
synclient CoastingSpeed=3
xmodmap .xmodmap
exec xmonad
