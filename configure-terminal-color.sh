#!/bin/bash
GRN="echo \t\033[32m ● \033[0m"
RED="echo \t\033[31m ● \033[0m"
TARGET_NAME="Set terminal color"

TERMINAL_PATH="io.elementary"

{
    gsettings set $TERMINAL_PATH.terminal.settings palette "#3f3f3f:#705050:#60b48a:#dfaf8f:#9ab8d7:#dc8cc3:#8cd0d3:#dcdcdc:#709080:#dca3a3:#72d5a3:#f0dfaf:#94bff3:#ec93d3:#93e0e3:#ffffff" 2>&1 >> ./install.log &&
    gsettings set $TERMINAL_PATH.terminal.settings background "#2c2c2c" 2>&1 >> ./install.log &&
    gsettings set $TERMINAL_PATH.terminal.settings foreground "#dcdcdc" 2>&1 >> ./install.log &&
    gsettings set $TERMINAL_PATH.terminal.settings cursor-color "#dcdcdc" 2>&1 >> ./install.log &&

    echo $TARGET_NAME": Done!" 2>&1 >> ./install.log
} || {
    echo $TARGET_NAME": Error!" 2>&1 >> ./install.log
}
