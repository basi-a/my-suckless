#!/bin/bash
install(){
    # fonts
    sudo pacman -S ttf-sourcecodepro-nerd wqy-zenhei
    sudo pacman -S nerd-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji
    sudo pacman -S ttf-font-awesome awesome-terminal-fonts ttf-sarasa-gothic
    # software package
    sudo pacman -S picom feh numlockx xautolock
    # fcitx5
    sudo pacman -S fcitx5-im fcitx5-chinese-addons fcitx5-material-color
    echo "If you added archlinuxcn and installed paru, please:"
    echo "paru -S fcitx5-input-support"
    echo "then relogin or reboot"
}
main(){
    install
}
main