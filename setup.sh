#!/usr/bin/env bash

echo "Hello World"

curl -o ~/test.bashrc https://raw.githubusercontent.com/SpaceCowboy113/dev2/master/.bashrc
curl -o ~/test.inputrc https://raw.githubusercontent.com/SpaceCowboy113/dev2/master/.inputrc
curl -o ~/test.tmux.conf https://raw.githubusercontent.com/SpaceCowboy113/dev2/master/.tmux.conf
curl -o ~/test.vimrc https://raw.githubusercontent.com/SpaceCowboy113/dev2/master/.vimrc

sudo yum install tmux