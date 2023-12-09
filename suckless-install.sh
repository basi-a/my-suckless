#!/bin/bash
dwm(){
    cd dwm || exit
    sudo make clean install
    cd ../
}
st(){
    cd st || exit
    sudo make clean install
    cd ../
}
slock(){
    cd slock || exit
    sudo make clean install
    cd ../
}
slstatus(){
    cd slstatus || exit
    sudo make clean install
    cd ../
}
dmenu(){
    cd dmenu || exit
    sudo make clean install
}
dependencies_and_dotfiles(){
    ./dependencies.sh
    ./use-dotfiles.sh
}
main(){
    dependencies_and_dotfiles
    dwm
    st
    dmenu
    slock
    slstatus
}
main
