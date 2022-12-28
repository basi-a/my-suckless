#!/bin/bash
dwm(){
    cd dwm
    sudo make && sudo make clean install
    cd ../
}
st(){
    cd st
    sudo make && sudo make clean install
    cd ../
}
slock(){
    cd slock
    sudo make && sudo make clean install
    cd ../
}
slstatus(){
    cd slstatus
    sudo make && sudo make clean install
    cd ../
}
autostart_and_xinitrc(){
    mkdir $HOME/.dwm
    cp -r dwm/scripts $HOME/.dwm/scripts
    cd $HOME/.dwm/scripts && mv $HOME/.dwm/scripts/autostart.sh ../ && cd $HOME
    mkdir $HOME/.config/wallpapper
    touch $HOME/.xinitrc
    echo "export LANG="zh_CN.UTF-8"" >> $HOME/.xinitrc
    echo "exec dwm" >> $HOME/.xinitrc
}
main(){
    dwm
    st
    slock
    slstatus
    autostart_and_xinitrc
}
main
