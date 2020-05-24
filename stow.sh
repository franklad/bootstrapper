#!/bin/bash

packages=(
    conf
    git
    shell
)

# run the stow command for the passed in directory $2 in location $1
stowit() {
    usr=$1
    app=$2
    # -v verbose
    # -R recursive
    # -t target

    stow -vRt ${usr} ${app}
}

echo ""
echo "Stowing packages for user: $(whoami)"

# install packages available
for package in ${packages[@]}; do
    stowit ~ $package
done

echo ""
echo "##### ALL DONE"
