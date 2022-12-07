#!/usr/bin/env bash

typeset ENV_LOCATION="/dr01/qadapps/systest"
typeset YAB_LOG="${ENV_LOCATION}/build/logs/yab.log"
typeset EMAIL="ji9@qad.com"
typeset yab="/dr01/qadapps/yab/yab -notify.animated:false -a:${ENV_LOCATION}"

echo "Setting up my development environment..."

curl -o ~/.bashrc https://raw.githubusercontent.com/SpaceCowboy113/dev2/master/.bashrc
curl -o ~/.inputrc https://raw.githubusercontent.com/SpaceCowboy113/dev2/master/.inputrc
curl -o ~/.tmux.conf https://raw.githubusercontent.com/SpaceCowboy113/dev2/master/.tmux.conf
curl -o ~/.vimrc https://raw.githubusercontent.com/SpaceCowboy113/dev2/master/.vimrc
curl -o /dr01/scripts/post-startup.sh https://raw.githubusercontent.com/SpaceCowboy113/dev2/master/post-startup.sh
sudo yum -y install tmux

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

source ~/.bashrc
bind -f ~/.inputrc
tmux source-file ~/.tmux.conf

# Start installation service
${yab} module-installation-service-update tomcat-installation-service-start
 
# Open ports for progress debugging
sudo iptables -I INPUT -p tcp -m tcp --dport 3099 -j ACCEPT