#!/bin/bash
GRN="echo \t\033[32m ● \033[0m"
RED="echo \t\033[31m ● \033[0m"
TARGET_NAME="Set-up VIM config"

{
    echo 'syntax on \t\t\t\t\t" set colorize syntax' > ~/.vimrc &&
    echo 'set encoding=utf-8 \t" this is standart...' >> ~/.vimrc &&
    echo 'set noswapfile \t\t\t" do not make swp files, when vim open file' >> ~/.vimrc &&
    echo 'set number \t\t\t\t\t" number on' >> ~/.vimrc &&
    echo 'set showcmd \t\t\t\t" show incomplete cmds down the bottom' >> ~/.vimrc &&
    echo 'set showmode \t\t\t\t" show current mode down the bottom' >> ~/.vimrc &&
    echo 'set hidden \t\t\t\t\t" allow export buffer outside vim' >> ~/.vimrc &&
    echo 'set autoread \t\t\t\t" reload files changed outside vim' >> ~/.vimrc &&
    echo '' >> ~/.vimrc &&
    echo 'set report=0 \t\t\t\t" always report number of lines changed' >> ~/.vimrc &&
    echo 'set mouse=a \t\t\t\t" use moise in all modes' >> ~/.vimrc &&
    echo '' >> ~/.vimrc &&
    echo 'set autoindent' >> ~/.vimrc &&
    echo 'set smartindent' >> ~/.vimrc &&
    echo 'set smarttab' >> ~/.vimrc &&
    echo 'set tabstop=2 \t\t\t" tab width' >> ~/.vimrc &&
    echo 'set softtabstop=2 \t" backspace' >> ~/.vimrc &&
    echo 'set shiftwidth=2 \t\t" indent width' >> ~/.vimrc &&
    echo 'set expandtab' >> ~/.vimrc &&
    echo '' >> ~/.vimrc &&
    echo 'set colorcolumn=120' >> ~/.vimrc &&
    echo '' >> ~/.vimrc &&
    echo 'set list listchars=tab:\ \ ,trail:·' >> ~/.vimrc &&
    echo '' >> ~/.vimrc &&
    echo 'autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120' >> ~/.vimrc &&
    echo 'autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120' >> ~/.vimrc &&
    echo 'autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120' >> ~/.vimrc &&
    echo 'autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0' >> ~/.vimrc &&
    echo 'autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120' >> ~/.vimrc &&
    echo '' >> ~/.vimrc &&
    echo '" syntax support' >> ~/.vimrc &&
    echo 'autocmd Syntax javascript set syntax=jquery' >> ~/.vimrc &&
    echo '" js' >> ~/.vimrc &&
    echo 'let g:html_indent_inctags = "html,body,head,tbody"' >> ~/.vimrc &&
    echo 'let g:html_indent_script1 = "inc"' >> ~/.vimrc &&
    echo 'let g:html_indent_style1 = "inc"' >> ~/.vimrc &&
    echo '' >> ~/.vimrc &&
    echo '" tabbar' >> ~/.vimrc &&
    echo 'let g:Tb_MaxSize = 2' >> ~/.vimrc &&
    echo 'let g:Tb_TabWrap = 1' >> ~/.vimrc &&
    echo '' >> ~/.vimrc &&
    echo 'hi Tb_Normal guifg=white ctermfg=white' >> ~/.vimrc &&
    echo 'hi Tb_Changed guifg=green ctermfg=green' >> ~/.vimrc &&
    echo 'hi Tb_VisibleNormal ctermbg=252 ctermfg=235' >> ~/.vimrc &&
    echo 'hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white' >> ~/.vimrc &&

    $GRN $TARGET_NAME
} || {
    $RED $TARGET_NAME
}