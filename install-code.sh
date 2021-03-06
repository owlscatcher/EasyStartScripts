#!/bin/bash
GRN="echo \t\033[32m ● \033[0m"
RED="echo \t\033[31m ● \033[0m"
TARGET_NAME="Install VS-code"

DEPENDENCY="apt-transport-https"
PKG_NAME="code"

{
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg 2>&1 >> ./install.log &&
    sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/ 2>&1 >> ./install.log &&
    sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list' 2>&1 >> ./install.log &&
    rm -f packages.microsoft.gpg 2>&1 >> ./install.log &&

    sudo apt update 2>&1 >> ./install.log && 
    sudo apt upgrade -y 2>&1 >> ./install.log && 
    sudo apt install -y $DEPENDENCY 2>&1 >> ./install.log &&
    sudo apt install -y $PKG_NAME 2>&1 >> ./install.log &&

    echo $TARGET_NAME": Done!" 2>&1 >> ./install.log
} || {
    echo $TARGET_NAME": Error!" 2>&1 >> ./install.log
}