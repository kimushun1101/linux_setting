#!/bin/sh
sudo sed -i.bak -e 's|http://archive|http://jp.archive|' /etc/apt/sources.list
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt install -y vim
cp -rs $(find $(dirname $0) -maxdepth 1 | grep -P '^.+\/\.(?!git)') $HOME
mkdir ~/.vimbackup
