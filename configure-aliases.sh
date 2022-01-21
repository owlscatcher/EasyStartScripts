#!/bin/bash
GRN="echo \t\033[32m ● \033[0m"
RED="echo \t\033[31m ● \033[0m"
TARGET_NAME="Set Bash and ZSH aliases"

{
    echo '' >> ~/.bashrc &&
    echo 'alias ll="ls -lah"' >> ~/.bashrc &&
    echo 'alias fi="io.elementary.files"' >> ~/.bashrc &&

    echo 'alias gs="git status"' >> ~/.bashrc &&
    echo 'alias gb="git branch"' >> ~/.bashrc &&
    echo 'alias gcha="git checkout -b"' >> ~/.bashrc &&
    echo 'alias gchd="git checkout -D"' >> ~/.bashrc &&
    echo 'alias gl="git log --oneline"' >> ~/.bashrc &&
    echo 'alias gpl="git pull"' >> ~/.bashrc &&
    echo 'alias gph="git push"' >> ~/.bashrc &&
    echo 'alias ga="git add"' >> ~/.bashrc &&
    echo 'alias gc="git commit -m"' >> ~/.bashrc &&

    echo 'alias dc="docker-compose"' >> ~/.bashrc &&
    echo 'alias do="docker"' >> ~/.bashrc &&
    echo 'alias di="docker image ls -a"' >> ~/.bashrc &&
    echo 'alias dirm="docker image rm -f"' >> ~/.bashrc &&
    echo 'alias dip="docker image prune"' >> ~/.bashrc &&
    echo 'alias dcon="docker container ls -a"' >> ~/.bashrc &&
    echo 'alias dconrm="docker container rm -f"' >> ~/.bashrc &&
    echo 'alias dconp="docker container prune"' >> ~/.bashrc &&

    echo 'alias packup="sudo apt update && sudo apt upgrade -y"' >> ~/.bashrc &&
    echo 'alias get-aliases="sh /usr/local/bin/get-aliases.sh"' >> ~/.bashrc &&

    echo '' >> ~/.zshrc &&
    echo 'alias ll="ls -lah"' >> ~/.zshrc &&
    echo 'alias fi="io.elementary.files"' >> ~/.zshrc &&

    echo 'alias gs="git status"' >> ~/.zshrc &&
    echo 'alias gb="git branch"' >> ~/.zshrc &&
    echo 'alias gch="git checkout"' >> ~/.zshrc &&
    echo 'alias gcha="git checkout -b"' >> ~/.zshrc &&
    echo 'alias gchd="git checkout -D"' >> ~/.zshrc &&
    echo 'alias gl="git log --oneline"' >> ~/.zshrc &&
    echo 'alias gpl="git pull"' >> ~/.zshrc &&
    echo 'alias gph="git push"' >> ~/.zshrc &&
    echo 'alias ga="git add"' >> ~/.zshrc &&
    echo 'alias gc="git commit -m"' >> ~/.zshrc &&

    echo 'alias dc="docker-compose"' >> ~/.zshrc &&
    echo 'alias do="docker"' >> ~/.zshrc &&
    echo 'alias di="docker image ls -a"' >> ~/.zshrc &&
    echo 'alias dirm="docker image rm -f"' >> ~/.zshrc &&
    echo 'alias dip="docker image prune"' >> ~/.zshrc &&
    echo 'alias dcon="docker container ls -a"' >> ~/.zshrc &&
    echo 'alias dconrm="docker container rm -f"' >> ~/.zshrc &&
    echo 'alias dconp="docker container prune"' >> ~/.zshrc &&

    echo 'alias packup="sudo apt update && sudo apt upgrade -y"' >> ~/.zshrc &&
    echo 'alias get-aliases="sh /usr/local/bin/get-aliases.sh"' >> ~/.zshrc &&

    sudo mv get-aliases.sh /usr/local/bin && chmod +x /usr/local/bin/get-aliases.sh 2>&1 >> ./install.log &&

    echo $TARGET_NAME": Done!" 2>&1 >> ./install.log
} || {
    echo $TARGET_NAME": Error!" 2>&1 >> ./install.log
}