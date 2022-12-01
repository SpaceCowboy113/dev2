#!/usr/bin/env bash

echo "Syncing configuration files..."

curl -o ~/.bashrc https://raw.githubusercontent.com/SpaceCowboy113/dev2/master/.bashrc
curl -o ~/.inputrc https://raw.githubusercontent.com/SpaceCowboy113/dev2/master/.inputrc
curl -o ~/.tmux.conf https://raw.githubusercontent.com/SpaceCowboy113/dev2/master/.tmux.conf
curl -o ~/.vimrc https://raw.githubusercontent.com/SpaceCowboy113/dev2/master/.vimrc

source ~/.bashrc
bind -f ~/.inputrc
tmux source-file ~/.tmux.conf
