echo '╭╮╭╮╭╮╱╱╭╮'
echo '┃┃┃┃┃┃╱╱┃┃'
echo '┃┃┃┃┃┣━━┫┃╭━━┳━━┳╮╭┳━━╮'
echo '┃╰╯╰╯┃┃━┫┃┃╭━┫╭╮┃╰╯┃┃━┫'
echo '╰╮╭╮╭┫┃━┫╰┫╰━┫╰╯┃┃┃┃┃━┫'
echo '╱╰╯╰╯╰━━┻━┻━━┻━━┻┻┻┻━━╯'
echo
echo 'To easy configure E-OS'
echo
echo 'Script execution is running...'
echo
echo 'Note: When ZSH is installed, you need to exit'
echo 'the ZSH session (enter "exit"), and the script' 
echo 'will continue execution.'
echo

GRN="echo \t\033[32m ● \033[0m"
RED="echo \t\033[31m ● \033[0m"

IS_INSTALLE_PKG=false
IS_INSTALL_CODE=false
IS_INSTALL_NETCORE=false
IS_INSTALL_ZSH=false
IS_CONFIGURE_TERM_COLOR=false
IS_CONFIGURE_VIM=false
IS_CONFIGURE_ALIASES=false

{
  sh install-packages.sh 2>&1 >> ./install.log &&
  IS_INSTALLE_PKG=true
} || {
  IS_INSTALLE_PKG=false
}

{
  sh install-code.sh 2>&1 >> ./install.log &&
  IS_INSTALL_CODE=true
} || {
  IS_INSTALL_CODE=false
}

{
  sh install-netcore.sh 2>&1 >> ./install.log &&
  IS_INSTALL_NETCORE=true
} || {
  IS_INSTALL_NETCORE=false
}

{ 
  sh install-zsh.sh 2>&1 >> ./install.log &&
  IS_INSTALL_ZSH=true
} || {
  IS_INSTALL_ZSH=false
}

{
  sh configure-terminal-color.sh 2>&1 >> ./install.log &&
  IS_CONFIGURE_TERM_COLOR=true
} || {
  IS_CONFIGURE_TERM_COLOR=false
}

{
  sh configure-vim.sh 2>&1 >> ./install.log &&
  IS_CONFIGURE_VIM=true
} || {
  IS_CONFIGURE_VIM=false
}

{
  sh configure-aliases.sh 2>&1 >> ./install.log &&
  IS_CONFIGURE_ALIASES=true
} || {
  IS_CONFIGURE_ALIASES=false
}




if [ $IS_INSTALLE_PKG == true ]; then $GRN "\tInstall packages"
else $RED; fi

if [ $IS_INSTALL_CODE == true ]; then $GRN "\tInstall VS-code"
else $RED; fi

if [ $IS_INSTALL_NETCORE == true ]; then $GRN "\tInstall Net Core 6"
else $RED; fi

if [ $IS_INSTALL_ZSH == true ]; then $GRN "\tInstall ZSH"
else $RED; fi

if [ $IS_CONFIGURE_TERM_COLOR == true ]; then $GRN "\tConfigure Terminal Color"
else $RED; fi

if [ $IS_CONFIGURE_VIM == true ]; then $GRN "\tConfigure VIM"
else $RED; fi

if [ $IS_CONFIGURE_ALIASES == true ]; then $GRN "\tConfigure aliases\n\nEnter the \"get-aliases\" command to get the alias list."
else $RED; fi
