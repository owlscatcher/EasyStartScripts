#!/bin/bash
GRN="echo \t\033[32m ● \033[0m"
RED="echo \t\033[31m ● \033[0m"
TARGET_NAME="Install netcore 6.0"
V='20.04'

{
    wget https://packages.microsoft.com/config/ubuntu/$V/packages-microsoft-prod.deb -O packages-microsoft-prod.deb &&
    sudo dpkg -i packages-microsoft-prod.deb &&
    rm packages-microsoft-prod.deb &&

    sudo apt update && sudo apt install -y dotnet-sdk-6.0 aspnetcore-runtime-6.0 &&

    $GRN $TARGET_NAME
} || {
    $RED $TARGET_NAME
}