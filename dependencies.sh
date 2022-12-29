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
    # add fcitx5 suppot to .xprofile
    touch $HOME/.xprofile
cat > $HOME/.xprofile <<'EOF'
im=fcitx
export GTK_IM_MODULE=$im
export QT_IM_MODULE=$im
export XMODIFIERS=@im=$im
export INPUT_METHOD=$im
export SDL_IM_MODULE=$im
EOF
}
main(){
    install
}
main