#!/bin/bash
sudo apt install \
libx11-dev \
libxft-dev \
libxinerama-dev \
libxrandr-dev \
libimlib2-dev \
libgd-dev \
libharfbuzz-dev \
xinit -y

sudo apt install picom feh numlockx xautolock rofi -y

echo "download nerd fonts from https://www.nerdfonts.com/font-downloads"
echo "we need download : Hack Nerd Font JetBrainsMono Nerd Font SauceCodePro Nerd Font"
echo "and then : sudo mkdir /usr/share/fonts/nerd && sudo unzip xxxnerdfont.zip -d /usr/share/fonts/nerd && sudo fc-cache -fv"
