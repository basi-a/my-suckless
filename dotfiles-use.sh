#!/bin/bash
ln-sf(){
    path="`pwd`"
    ln -sf $path/dotfiles/fastfetch $HOME/.config/fastfetch
    ln -sf $path/dotfiles/gtk/.gtkrc-2.0 $HOME/.gtkrc-2.0
    ln -sf $path/dotfiles/gtk/gtk-3.0 $HOME/.config/gtk-3.0
    ln -sf $path/dotfiles/gtk/gtk-4.0 $HOME/.config/gtk-4.0
    ln -sf $path/dotfiles/wallpaper $HOME/.config/wallpaper
    ln -sf $path/dotfiles/.dwm $HOME/.dwm
    ln -sf $path/dotfiles/xinitrc/.xinitrc $HOME/.xinitrc
}

main(){
    ln-sf
}
main