#!/bin/bash
icon_and_theme(){
    sudo pacman -S vimix-gtk-themes
    sudo pacman -S papirus-icon-theme
}

ln-sf(){
    path="`pwd`"
    ln -sf $/fastfetch $HOME/.config/fastfetch
    ln -sf $path/gtk/.gtkrc-2.0 $HOME/.gtkrc-2.0
    ln -sf $path/gtk/gtk-3.0 $HOME/.config/gtk-3.0
    ln -sf $path/gtk/gtk-4.0 $HOME/.config/gtk-4.0
}

main(){
    # icon_and_theme
    ln-sf
}
main