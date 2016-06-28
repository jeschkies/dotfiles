#!/bin/sh
#
# Vim and Vundle
#
# This installs Vundle for vim and all plugins.
export ZSH=$HOME/.dotfiles

# Create .vim
mkdir -p $HOME/.vim

# Link colors folder
ln -s $ZSH/vim/colors $HOME/.vim/colors

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

# Install plugins
vim +PluginInstall +qall
