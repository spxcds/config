#! /bin/bash

source ./common.sh

succeed=true

CopyFile() {
    cp -r $1 $2
    if [ $? == 0 ]; then
        Info "$1 configurated done"
    else
        Error "$1 configurated error!"
    fi
}

MoveFile() {
    mv $1 $2
    if [ $? == 0 ]; then
        Info "$1 configurated done"
    else
        Error "$1 configurated error!"
    fi
}


if [ ! -d ~/.vim ]; then
    mkdir ~/.vim
fi

CopyFile vim/\* ~/.vim
MoveFile ~/.vim/vimrc ~/.vimrc
MoveFile ~/.vim/clang-format ~/.clang-format
MoveFile ~/.vim/yapf ~/.config

CopyFile utils/tmux/tmux.conf ~/.tmux.conf

if [ $succeed == true ]; then
    Info "DONE!"
else
    Error "ERROR!"
fi
