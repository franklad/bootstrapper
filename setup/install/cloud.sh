#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Cloud Tools\n\n"

install_snap "Digital Ocean" "doctl"
install_snap "lxd" "lxd"
install_snap "Docker" "docker"
install_snap "stubb (CircleCI)" "stubb"
install_snap "GCP" "google-cloud-sdk --classic"
install_snap "Kubernetese Controller" "kubectl --classic"
install_snap "Microk8s" "microk8s --classic"