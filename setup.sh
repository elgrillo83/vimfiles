#!/bin/sh

# Link .vimrc
ln -s $PWD/.vimrc $HOME/.vimrc

# Install pathogen.vim
mkdir -p $HOME/.vim/autoload 
mkdir -p $HOME/.vim/bundle
curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install vim plugins
cd $HOME/.vim/bundle

# Solarized
git clone git://github.com/altercation/vim-colors-solarized.git
# Syntastic
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
