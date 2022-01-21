#!/bin/bash
GRN="echo \t\033[32m ● \033[0m"
RED="echo \t\033[31m ● \033[0m"
TARGET_NAME="Install ZSH and \"Oh-My-ZSH!\""

{
    sudo apt install -y zsh 2>&1 >> ./install.log &&
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 2>&1 >> ./install.log &&

    echo $TARGET_NAME": Done!" 2>&1 >> ./install.log
} || {
    echo $TARGET_NAME": Error!" 2>&1 >> ./install.log
}