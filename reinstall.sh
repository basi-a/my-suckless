#!/bin/bash
reinstall_dwm(){
    cd dwm || exit
    sudo rm config.h
    sudo make clean install && cd ../
}
reinstall_st(){
    cd st || exit
    sudo rm config.h
    sudo make clean install && cd ../
}
reinstall_slstatus(){
    cd slstatus || exit
    sudo rm config.h
    sudo make clean install && cd ../
}
reinstall_slock(){
    cd slock || exit
    sudo rm config.h
    sudo make clean install && cd ../
}
reinstall_dmenu(){
    cd dmenu || exit
    sudo rm config.h
    sudo make clean install && cd ../
}

main(){
    case $select in
    dwm)
        echo "reinstall dwm......"
        reinstall_dwm
        ;;
    st)
        echo "reinstall st......"
        reinstall_st
        ;;
    slstatus)
        echo "reinstall slstatus......"
        reinstall_slstatus
        ;;
    slock)
        echo "reinstall slock......"
        reinstall_slock
        ;;
    dmenu)
        echo "reinstall dmenu......"
        reinstall_dmenu
        ;;
    all)
        echo "reinstall all......"
        reinstall_dwm
        reinstall_st
        reinstall_dmenu
        reinstall_slock
        reinstall_slstatus
        ;;
    *)
        echo "Error parameter"
    esac
}
select=$1
main