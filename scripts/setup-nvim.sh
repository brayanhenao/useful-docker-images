#!/bin/bash

# Clone luan neovim
if [[ ! -d ~/.vim ]]; then
  git clone https://github.com/luan/vimfiles ~/.vim
fi

# Copy .vimrc files
cp "/tmp/scripts/files/vimrc.local" "/root/.vimrc.local"
cp "/tmp/scripts/files/vimrc.local.plugins" "/root/.vimrc.local.plugins"

# Update plugins
pip3 install wheel
pip3 install setuptools
pip3 install pynvim