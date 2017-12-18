#!/bin/bash

sudo apt-get install -y vim tmux zsh ranger
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp .zshrc ~/
cp .vimrc ~/
cp newtmux.conf ~/.tmux.conf 
cp rc.conf ~/.config/ranger/rc.conf

sudo apt-get install neovim
mkdir ~/.config/nvim
cp ./init.vim ~/.config/nvim/

sudo apt-get install -y build-essential cmake nodejs npm ctags
sudo apt-get install -y python-dev python3-dev

cd ~/.vim/plugged/YouCompleteMe/; ./install.py --clang-completer --js-completer

# add user to sudo 
sudo sh -c "echo \"$USER ALL=(ALL) NOPASSWD:ALL\" > /etc/sudoers.d/90-cloudimg-ubuntu"
