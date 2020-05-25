#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "utils.sh"

main() {
    print_in_purple "\n • Docker Group Permissions\n\n"
    sudo groupadd docker
    sudo usermod -aG docker ${USER}
}

main