#!/bin/sh

# Install homebrew and homebrew cask
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask

# Install vim
ln -sf ~/.dotfiles/vim/colors ~/.vim/colors
ln -sf ~/.dotfiles/vim/vimrc .vimrc
