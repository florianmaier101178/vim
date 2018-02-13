#!/bin/bash

# backup .vimrc
if [ -f ~/.vimrc ]; then
    DATE=`date '+%Y-%m-%d_%H:%M:%S'`
    mv ~/.vimrc ~/.vimrc.$DATE
fi

# link .vimrc
ln -s ~/vim/vimrc ~/.vimrc

# backup vim folder
if [ -d ~/.vim ]; then
    DATE=`date '+%Y-%m-%d_%H:%M:%S'`
    mv ~/.vim ~/.vim.$DATE
fi

# link .vim folder
ln -s ~/vim/vim ~/.vim
