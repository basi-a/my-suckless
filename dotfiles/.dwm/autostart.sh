#!/bin/bash
picom -b &
$HOME/.screenlayout/dwm-vm-screenlayout.sh &
while true; do
	feh --bg-fill --randomize $HOME/.config/wallpaper/*
	sleep 1200
done &
numlockx &
fcitx5 -d &
blueman-applet &
nm-applet &
slstatus &
wmname LG3D &
xautolock -time 60 -locker slock &
/usr/lib/pam_kwallet_init &
# only use in my school
sleep 2 && \
/usr/lib/polkit-kde-authentication-agent-1 &
birdtray &
${HOME}/go/bin/connection-check &
$(pwd)/ups.sh &
