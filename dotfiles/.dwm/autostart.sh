#!/bin/bash
picom -b &
while true; do
	feh --bg-fill --randomize $HOME/.config/wallpaper/*
	sleep 3600
done &
numlockx &
fcitx5 -d &
blueman-applet &
nm-applet &
slstatus &
wmname LG3D &
xautolock -time 15 -locker slock &
/usr/lib/pam_kwallet_init &
