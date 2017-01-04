#!/bin/sh

# Link .vimrc
ln -s $PWD/.vimrc $HOME/.vimrc

# Install pathogen.vim
mkdir -p $HOME/.vim/autoload 
mkdir -p $HOME/.vim/bundle
curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install vim plugins
cd $HOME/.vim/bundle

# Ack
git clone git clone https://github.com/mileszs/ack.vim.git

# Airline
git clone https://github.com/bling/vim-airline

# Bbye
git clone https://github.com/moll/vim-bbye.git

# Better Whitespace
git clone https://github.com/ntpeters/vim-better-whitespace

# CtrlP
git clone https://github.com/kien/ctrlp.vim

# Solarized
git clone git://github.com/altercation/vim-colors-solarized.git

# Syntastic
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git

# tComment
git clone https://github.com/tomtom/tcomment_vim
