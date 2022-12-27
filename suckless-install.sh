#!/bin/bash
dwm(){
    cd dwm
    sudo make && sudo make clean install
}
st(){
    cd st
    sudo make && sudo make clean install
}
slock(){
    cd slock
    sudo make && sudo make clean install
}
slstatus(){
    cd slstatus
    sudo make && sudo make clean install
}
main(){
    dwm
    st
    slock
    slstatus
}
main