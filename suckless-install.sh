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
main(){
    dwm
    st
    slock
    slstatus
}
main
