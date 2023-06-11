#!/bin/bash
TYPE=$(nmcli connection show --active | awk '{if (NR==2){print $3}}')
NAME=$(nmcli connection show --active | awk '{if (NR==2){print $1}}')
BROWSER="microsoft-edge-stable"
if [ "${TYPE}" == "wifi" ] && [ "${NAME}" == "ccdx-wifi" ];then
    ping -c 1 -w 5 baidu.com>/dev/null 2>&1
    if [ "$?" != "0" ];then
	    ${BROWSER} http://1.1.1.2
    fi
fi
