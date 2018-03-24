export _JAVA_AWT_WM_NONREPARENTING=1
xsetroot -cursor_name left_ptr
xrdb -merge ~/.Xresources
setxkbmap -option compose:ralt
exec bspwm 
