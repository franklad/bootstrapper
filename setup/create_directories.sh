#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

create_directories() {

    declare -a DIRECTORIES=(
        "$HOME/Downloads/torrents"
    )

    for i in "${DIRECTORIES[@]}"; do
        mkd "$i"
    done

}

create_dot_directories() {

    declare -a DIRECTORIES=(
        "$HOME/.fonts"
    )

    for i in "${DIRECTORIES[@]}"; do
        mkd ".$i"
    done

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {
    print_in_purple "\n • Create directories\n\n"
    create_directories
    create_dot_directories
}

main
