#!/bin/bash
cat >> /etc/pacman.conf << EOF
[archlinuxcn]
Include = /etc/pacman.d/archlinuxcn-mirrorlist
EOF
echo 'Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch' | tee -a /etc/pacman.d/archlinuxcn-mirrorlist
pacman -Sy archlinuxcn-keyring
