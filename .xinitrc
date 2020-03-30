export _JAVA_AWT_WM_NONREPARENTING=1
xsetroot -cursor_name left_ptr
xrdb -merge ~/.Xresources
systemctl --user import-environment DISPLAY
setxkbmap -option compose:ralt
xinput set-prop pointer:Logitech\ MX\ Ergo 'libinput Accel Speed' -0.3
numlockx on
exec awesome
# exec bspwm
