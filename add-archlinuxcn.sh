#!/bin/bash
cat > /etc/pacman.conf << EOF
[archlinuxcn]
Include = /etc/pacman.d/archlinuxcn-mirrorlist
EOF
cat > /etc/pacman.d/archlinuxcn-mirrorlist <<EOF
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch
EOF
pacman -Sy archlinuxcn-keyring
