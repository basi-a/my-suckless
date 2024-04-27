#!/bin/bash
autorandr -c &
picom -b &
while true; do
	feh --bg-fill --randomize $HOME/.config/wallpaper/*
	sleep 60
done &
numlockx &
fcitx5 -d &
slstatus &
xautolock -time 60 -locker slock &
wmname LG3D &
/usr/lib/pam_kwallet_init &
sleep 2 && \
/usr/lib/polkit-kde-authentication-agent-1 &
birdtray &
nm-applet &
dunst &
source brightness.sh
source ups.sh
