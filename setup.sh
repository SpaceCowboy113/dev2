#!/usr/bin/env bash

echo "Hello World"

wget https://github.com/SpaceCowboy113/dev2/blob/master/.bashrc
wget https://github.com/SpaceCowboy113/dev2/blob/master/.inputrc
wget https://github.com/SpaceCowboy113/dev2/blob/master/.tmux.conf
wget https://github.com/SpaceCowboy113/dev2/blob/master/.vimrc

mv .bashrc ~
mv .inputrc ~
mv .tmux.conf ~
mv .vimrc ~

source ~/.bashrc
