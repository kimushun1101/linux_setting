#!/bin/sh
sudo apt update
sudo apt install -y vim zsh
chsh -s /bin/zsh
cp -rs $(find $(pwd) -maxdepth 1 | grep -P '^.+\/\.(?!git)') $HOME
mkdir ~/.vimbackup
