#!/bin/bash
ln-sf(){
    path=$(pwd)
    ln -sf $path/dotfiles/config/* $HOME/.config
    ln -sf $path/dotfiles/.dwm $HOME
    ln -sf $path/dotfiles/.cargo/config $HOME/.cargo/config
    ln -sf $path/dotfiles/zsh/.zshrc $HOME/.zshrc
    #ln -sf $path/dotfiles/.gtkrc-2.0 $HOME/.gtkrc-2.0
    ln -sf $path/dotfiles/.xinitrc $HOME/.xinitrc
    ln -sf $path/dotfiles/.xprofile $HOME/.xprofile
    sudo ln -sf $path/dotfiles/zsh/dracula.zsh-theme /usr/share/oh-my-zsh/themes/dracula.zsh-theme
}
makedir(){
    if [ ! -d "$HOME/.config" ];then
        mkdir $HOME/.config
    fi
    if [ ! -d "$HOME/go/bin" ];then
        mkdir -p $HOME/go/bin
    fi
    if [ ! -d "$HOME/.cargo" ];then
        mkdir $HOME/.cargo
    fi
}
main(){
    makedir
    ln-sf
}
main
