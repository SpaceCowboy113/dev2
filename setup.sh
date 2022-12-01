#!/usr/bin/env bash

echo "Setting up my development environment..."

curl -o ~/.bashrc https://raw.githubusercontent.com/SpaceCowboy113/dev2/master/.bashrc
curl -o ~/.inputrc https://raw.githubusercontent.com/SpaceCowboy113/dev2/master/.inputrc
curl -o ~/.tmux.conf https://raw.githubusercontent.com/SpaceCowboy113/dev2/master/.tmux.conf
curl -o ~/.vimrc https://raw.githubusercontent.com/SpaceCowboy113/dev2/master/.vimrc
curl -o /dr01/scripts https://raw.githubusercontent.com/SpaceCowboy113/dev2/master/post-startup.sh
sudo yum -y install tmux

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

source ~/.bashrc
bind -f ~/.inputrc
tmux source-file ~/.tmux.conf
