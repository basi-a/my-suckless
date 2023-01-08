#!/bin/bash
ln-sf(){
    path="`pwd`"
    ln -sf $path/dotfiles/.zshrc $HOME/.zshrc
    ln -sf $path/dotfiles/.gtkrc-2.0 $HOME/.gtkrc-2.0
    ln -sf $path/dotfiles/config/* $HOME/.config
    ln -sf $path/dotfiles/dwm $HOME/.dwm
    ln -sf $path/dotfiles/xinitrc/.xinitrc $HOME/.xinitrc
}

main(){
    ln-sf
}
main