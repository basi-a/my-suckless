#!/bin/bash
dwm() {
  cd dwm || exit
  sudo make clean install
  cd ../
}
st() {
  cd st || exit
  sudo make clean install
  cd ../
}
slock() {
  cd slock || exit
  sudo make clean install
  cd ../
}
slstatus() {
  cd slstatus || exit
  sudo make clean install
  cd ../
}
dmenu() {
  cd dmenu || exit
  sudo make clean install
  cd ../
}
dependencies_and_dotfiles() {
  ./dependencies.sh
  ./use-dotfiles.sh
}
main() {
  dependencies_and_dotfiles
  dwm
  st
  dmenu
  slock
  slstatus
  if [[ ! -d "/usr/share/xsessions/" ]]; then
    sudo mkdir /usr/share/xsessions
  fi
  sudo cp dwm.desktop /usr/share/xsessions
}
main
