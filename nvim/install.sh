#!/bin/sh
TARGET="$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"
if [ ! -d "$TARGET" ]; then
  git clone --depth 1 https://github.com/wbthomason/packer.nvim "$TARGET"
fi
 
