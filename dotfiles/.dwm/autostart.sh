#!/bin/bash
picom -b &
while true; do
	feh --bg-fill --randomize $HOME/.config/wallpaper/*
	sleep 60
done &
numlockx &
fcitx5 -d &
blueman-applet &
nm-applet &
slstatus &
wmname LG3D &
xautolock -time 5 -locker slock &
/usr/lib/pam_kwallet_init &
# only use in my school
sleep 3 && ${HOME}/.dwm/ccdx-wifi-connection-check.sh &
