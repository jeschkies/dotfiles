#!/bin/sh
#
# Nix
#
export ZSH=$HOME/.dotfiles

# Install Nix
$ZSH/nix/nix-install

# Add to env
cp $HOME/.nix-profile/etc/profile.d/nix.sh $ZSH/nix/nix.zsh
