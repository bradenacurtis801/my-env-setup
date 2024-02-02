#!/bin/bash

# Install tmux
sudo apt install tmux
cat ./tmux.conf > ~/.tmux.conf
tmux source-file ~/.tmux.conf

# Install Neovim
git clone https://github.com/neovim/neovim.git
cd neovim

# Install Needed Packages 
sudo apt-get install build-essential
sudo apt-get install cmake

make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
sudo mv nvim /usr/local/bin
echo 'alias vim="nvim"' >> ~/.bashrc

#Neovim person config

## Ref: https://www.youtube.com/watch?v=h4g0m0Iwmys&t=101s
# git clone https://github.com/hrsh7th/nvim-cmp                   
# append 'hrsh7th/cmp-nvim-lsp' to 'require('packer').startup(function(use)
# run ':PackerSync'
