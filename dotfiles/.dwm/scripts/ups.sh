#!/bin/bash
GATEWAY=$(ip route | grep default | awk '{print $3}')

while true
do
    ping -c 4 -w 100 $GATEWAY >/dev/null 2>&1
    if [[ $? != 0 ]];then
        echo "$(date +"%Y/%m/%d %T") The power supply was switched to UPS" >> $HOME/.UPS.log
    	echo "$(date +"%Y/%m/%d %T") poweroff ..." && systemctl poweroff -i
    fi
    sleep 120
done &
