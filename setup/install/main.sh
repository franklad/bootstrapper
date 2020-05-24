#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n • Install\n\n"

update
upgrade

./build-essentials.sh

./esst.sh
./python.sh
./misc.sh
./cloud.sh

./cleanup.sh
