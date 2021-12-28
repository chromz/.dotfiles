export _JAVA_AWT_WM_NONREPARENTING=1
xsetroot -cursor_name left_ptr
xrdb -merge ~/.Xresources
systemctl --user import-environment DISPLAY
xinput set-prop pointer:Logitech\ MX\ Ergo 'libinput Accel Speed' -0.3
numlockx on
xrandr --rate 144
# setxkbmap -layout us,us -variant colemak,basic -option grp:alt_space_toggle
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
exec bspwm
