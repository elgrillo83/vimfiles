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
git clone https://github.com/mileszs/ack.vim.git

# Airline
git clone https://github.com/bling/vim-airline

# Bbye
git clone https://github.com/moll/vim-bbye.git

# Better Whitespace
git clone https://github.com/ntpeters/vim-better-whitespace

# Coffeescript Highlighting
git clone https://github.com/kchmck/vim-coffee-script.git

# CtrlP
git clone https://github.com/kien/ctrlp.vim

# Fugitive
# Git wrapper
git clone git://github.com/tpope/vim-fugitive.git
vim -u NONE -c "helptags vim-fugitive/doc" -c q

# Solarized
git clone git://github.com/altercation/vim-colors-solarized.git

# Supertab
git clone https://github.com/ervandew/supertab

# Surround
git clone git://github.com/tpope/vim-surround.git

# Syntastic
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git

# tComment
git clone https://github.com/tomtom/tcomment_vim

# Tsuguyomi (TypeScript IDE)
git clone https://github.com/Shougo/vimproc.vim.git ~/.vim/bundle/vimproc.vim
pushd ~/.vim/bundle/vimproc.vim
make
popd

git clone https://github.com/Quramy/tsuquyomi.git ~/.vim/bundle/tsuquyomi

# TypeScript Syntax for Vim
git clone https://github.com/leafgarland/typescript-vim.git
