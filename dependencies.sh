#!/bin/bash
install(){
    # fonts
    sudo pacman -S ttf-sourcecodepro-nerd wqy-zenhei
    sudo pacman -S nerd-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji
    sudo pacman -S ttf-font-awesome otf-font-awesome awesome-terminal-fonts powerline-fonts ttf-sarasa-gothic
    # software package
    sudo pacman -S picom feh numlockx xautolock dmenu rofi
    # fcitx5
    sudo pacman -S fcitx5-im fcitx5-chinese-addons fcitx5-material-color
    # icon
    sudo pacman -S papirus-icon-theme
    # nm-applet blueman-applet
    sudo pacman -S network-manager-applet blueman
    # gtk-theme paru from archlinuxcn
    sudo pacman -S vimix-gtk-themes paru

    # if want get the "Time New Romen" font
    # paru -S ttf-ms-fonts
}
main(){
    install
}
main