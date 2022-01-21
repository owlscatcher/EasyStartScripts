#!/bin/bash
GRN="echo \t\033[32m ● \033[0m"
RED="echo \t\033[31m ● \033[0m"
TARGET_NAME="Install netcore 6.0"
V='20.04'

{
    wget https://packages.microsoft.com/config/ubuntu/$V/packages-microsoft-prod.deb -O packages-microsoft-prod.deb 2>&1 >> ./install.log &&
    sudo dpkg -i packages-microsoft-prod.deb 2>&1 >> ./install.log &&
    rm packages-microsoft-prod.deb 2>&1 >> ./install.log &&

    sudo apt update 2>&1 >> ./install.log && 
    sudo apt install -y dotnet-sdk-6.0 aspnetcore-runtime-6.0 2>&1 >> ./install.log &&

    echo $TARGET_NAME": Done!" 2>&1 >> ./install.log
} || {
    echo $TARGET_NAME": Error!" 2>&1 >> ./install.log
}