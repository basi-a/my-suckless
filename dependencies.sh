#!/bin/bash
install(){
    # fonts
    sudo pacman -S ttf-sourcecodepro-nerd wqy-zenhei
    sudo pacman -S nerd-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji
    sudo pacman -S ttf-font-awesome otf-font-awesome awesome-terminal-fonts powerline-fonts ttf-sarasa-gothic
    # software package
    sudo pacman -S picom feh numlockx xautolock rofi gd alsa-utils thunar
    # fcitx5
    sudo pacman -S fcitx5-im fcitx5-chinese-addons fcitx5-material-color fcitx5-nord
    # icon
    sudo pacman -S papirus-icon-theme
    # nm-applet blueman-applet wmname
    sudo pacman -S network-manager-applet blueman wmname autorandr
    # gtk-theme paru pamac from archlinuxcn
    sudo pacman -S vimix-gtk-themes paru pamac
    sudo pacman -S thunderbird
    
    paru -S birdtray
    sudo pacman -S alacritty
    sudo pacman -S zsh-syntax-highlighting zsh-autosuggestions
    paru -S oh-my-zsh-git
    # if want get the "Time New Romen" font
    paru -S ttf-ms-fonts
}
main(){
    install
}
main
