#!/bin/bash

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cd..="cd .."

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

alias :q="exit"
alias c="clear"
alias m="man"
alias ch="history -c && > ~/.bash_history"
alias g="git"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ls="lsd --group-dirs first"
alias tree="lsd --tree"
alias ll="ls -l"
alias la="ls -al"
alias map="xargs -n1"
alias path='printf "%b\n" "${PATH//:/\\n}"'
alias q="exit"
alias bat="bat --theme=ansi-dark --style=plain" 
alias cat="bat --pager=never"
alias less="bat"
alias bwg="bw list --pretty items --search"
alias vpn="expressvpn connect"
alias dvpn="expressvpn disconnect"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Lock screen.

alias afk="gnome-screensaver-command --lock"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Shorter commands for the `Advanced Packaging Tool`

alias apti="sudo apt-get install"
alias aptr="sudo apt-get remove"
alias apts="sudo apt-cache search"
alias aptu="sudo apt-get update \
                && sudo apt-get upgrade"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Empty trash.

alias empty-trash="rm -rf ~/.local/share/Trash/files/*"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Hide/Show desktop icons.

alias hide-desktop-icons="gsettings set org.gnome.desktop.background show-desktop-icons false"
alias show-desktop-icons="gsettings set org.gnome.desktop.background show-desktop-icons true"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Get local IP.

alias local-ip="ifconfig \
                    | grep 'inet addr' \
                    | grep -v '127.0.0.1' \
                    | cut -d: -f2 \
                    | cut -d' ' -f1"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Open from the terminal.

alias open="xdg-open"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Update applications and CLTs.

alias u="sudo apt-get update \
            && sudo apt-get upgrade \
            && npm install -g npm \
            && npm upgrade -g"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Docker aliases

alias dka="docker kill $(docker ps -a -q)"
alias dra="docker rm $(docker ps -a -q)"
alias drai="docker rmi $(docker images -a -q)"
alias dps="docker-pretty-ps"
