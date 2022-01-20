#!/bin/bash
GRN="echo \t\033[32m ● \033[0m"
RED="echo \t\033[31m ● \033[0m"
TARGET_NAME="Install ZSH and \"Oh-My-ZSH!\""

{
    sudo apt install -y zsh &&
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&

    $GRN $TARGET_NAME
} || {
    $RED $TARGET_NAME
}