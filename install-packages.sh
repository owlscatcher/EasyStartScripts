#!/bin/bash
GRN="echo \t\033[32m ● \033[0m"
RED="echo \t\033[31m ● \033[0m"
TARGET_NAME="Install gen and dev pack"

GEN_PKG='curl wget autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm-dev libdb-dev'
DEV_PKG='vim tree tmux ranger htop docker docker-compose git'

{
    sudo apt update 2>&1 >> ./install.log && 
    sudo apt upgrade -y 2>&1 >> ./install.log && 
    sudo apt install -y $GEN_PKG 2>&1 >> ./install.log &&
    sudo apt install -y $DEV_PKG 2>&1 >> ./install.log &&
    
    echo $TARGET_NAME": Done!" 2>&1 >> ./install.log
} || {
    echo $TARGET_NAME": Error!" 2>&1 >> ./install.log
}