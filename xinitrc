export _JAVA_AWT_WM_NONREPARENTING=1
xsetroot -cursor_name left_ptr
xrdb -merge ~/.Xresources
systemctl --user import-environment DISPLAY
setxkbmap -option compose:ralt
exec bspwm 
