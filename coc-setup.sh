#!/usr/bin/bash

figlet "Coc-nvim setup"

echo "do you want to install coc.nvim in your Linux? (y/n)"
read this

coc-vim() {
    if [[ ! -f "/usr/bin/node" ]]; then
        yay --sync --refresh nodejs
    fi
    #echo "Plug 'neoclide/coc.nvim', {'branch': 'release'}" >> $HOME/.vimrc
    echo "done! try to open vim and use ':PlugInstall command' senpai!"
}

opp=true

case "$this" in
    y|Y)
        coc-vim
        ;;
    n|N)
        echo "cancel"
        ;;
    *)
        echo "baka"
        ;;
esac











