#!/bin/env sh

DIR_INSTALL_PLUGIN="${HOME}/.oh-my-zshd/plugins/vault-switch"

check_oh_my_zsh(){
    if [ ! -d "${HOME}/.oh-my-zshd" ]
    then
     printf "%s\n%s" "You haven't installed oh-my-zsh" "You need to install oh-my-zsh before install plugin."
     exit 1
    fi
}

get_plugin(){
    mkdir -p "${DIR_INSTALL_PLUGIN}" && cd $_
    curl -s https://raw.githubusercontent.com/linuxoid69/zsh-plugins/master/vault-switch/vault-switch.plugin.zsh -O
    curl -s https://raw.githubusercontent.com/linuxoid69/zsh-plugins/master/vault-switch/README.md -O
}

main(){
    check_oh_my_zsh
    get_plugin && echo "Plugin vault-switch installed successfully"
}

main
