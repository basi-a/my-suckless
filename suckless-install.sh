#!/bin/bash
dwm(){
    cd dwm
    sudo make clean install
    cd ../
}
st(){
    cd st
    sudo make clean install
    cd ../
}
slock(){
    cd slock
    sudo make clean install
    cd ../
}
slstatus(){
    cd slstatus
    sudo make clean install
    cd ../
}
dmenu(){
    cd dmenu
    sudo make clean install
}
dependencies_and_dotfiles(){
    ./dependencies.sh
    ./use-dotfiles.sh
}
main(){
    dwm
    st
    dmenu
    slock
    slstatus
    dependencies_and_dotfiles
}
main
