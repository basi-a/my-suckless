#!/bin/bash
picom -b &
while true; do
	feh --bg-fill --randomize $HOME/.config/wallpapper/*
	sleep 60
done &
numlockx &
$HOME/.dwm/scripts/enable-fcitx.sh &
fcitx5 -d &
slstatus &
xautolock -time 15 -locker slock &
