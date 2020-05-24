#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Essentials\n\n"

install_package "Git" "git"
install_package "cURL" "curl"
install_package "Vim" "vim"
install_package "Tree" "tree"
install_package "Snap" "snap snapd"
install_snap "VSCode" "code --classic"
install_package "htop" "htop"
install_package "SSL Library" "libssl-dev"
install_package "Go" "golang"
install_package "Node" "nodejs npm"
install_package "xclip" "xclip"
install_package "Bat" "bat"
install_package "GNU Stow" "stow"
install_package "awk" "awk"
install_package "sed" "sed"
install_package "zsh" "zsh"