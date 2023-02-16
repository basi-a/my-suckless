#!/bin/bash
picom -b &
while true; do
	feh --bg-fill --randomize $HOME/.config/wallpaper/*
	sleep 60
done &
numlockx &
fcitx5 -d &
pamac-tray &
blueman-applet &
nm-applet &
slstatus &
wmname LG3D &
xautolock -time 15 -locker slock &
