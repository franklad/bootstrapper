#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous\n\n"

install_package "Transmission" "transmission"
install_package "VLC" "vlc"
install_snap "Postman" "postman"
install_snap "Telegram" "telegram-desktop"
install_snap "Spotify" "spotify"
install_snap "Gimp" "gimp"
install_snap "BitWarden" "bw"
install_snap "LSD" "lsd"
install_package "Brotli" "brotli"
install_package "Zopfli" "zopfli"
install_package "UnZip" "unzip"
install_package "NeoFetch" "neofetch"
