
### Bash completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

### Functions
cdls() { echo  && cd "$@" && ls -CF; }
gr () { grep -r "$@"; }
fn () { find ./ -name "$@"; }
mkcd() { mkdir -p $1; cd $1; }
#install() { yab -install-update:false install "$@"; }
#installbl() {
    #if [ $# -eq 2 ]
    #then
        #install "$1"-"$2" "$1"-api-"$2" "$1"-proxy-"$2"
    #else
        #install "$1" "$1"-api "$1"-proxy
    #fi
#}

#installwebui() {
    #if [ $# -eq 2 ]
    #then
        #install erp-"$1"-webui-"$2"
    #else
        #install erp-"$1"-webui
    #fi
#}

## Aliases
alias ls='ls -h --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

alias ..='cd ..'
alias ...='cd ../..'
alias back='cd $OLDPWD'
alias root='sudo su'
alias runlevel='sudo /sbin/init'
alias grep='grep --color=auto'
alias dfh='df -h'
alias sv='sudo vim'
alias v='vim'
alias e='exit'

# More Aliases
alias ebash="vim ~/.bashrc"
alias eb="ebash"
alias sbash="source ~/.bashrc"
alias evim="vim ~/.vimrc"
alias ev="evim"
alias svim="source ~/.vimrc"
alias lversion="cat /etc/*-release"
alias hs='history | grep'

##Always ls after a cd
alias cl='cdls'

## Tmux
#export TERM="screen-256color"
#alias tmux="tmux -2"

## QAD Aliases
alias qad="cd /dr01/qadapps/systest"
alias yupdate="yab update"
alias yu="yupdate"
alias yinfo="yab info -all"
alias yi="yinfo"
alias ycreate="yab update && yab init -p:http://yab.qad.com/wsvn/yab/ee/qa/2020/demo-data.properties -p:http://yab.qad.com/wsvn/yab/ee/dev/module-dev/inventory/trunk/inventory-dev.properties -p:http://yab.qad.com/wsvn/yab/recipes/aux20211/2020/fin20211-core-prodorder-qmi-pc.properties"
alias yc="ycreate"
alias yrefresh="yab -r"
alias yr="yrefresh"
alias yshell="yab shell"
alias ysh="yshell"
alias yst="yab status"
alias y="yab "

alias tcl="tail -f /dr01/qadapps/systest/servers/tomcat-webui/logs/catalina.out"
alias tal="tail -f /dr01/qadapps/systest/build/logs/as-qra.server.log"
alias tyl="tail -f /dr01/qadapps/systest/build/logs/yab.log"

alias ecl="vim /dr01/qadapps/systest/servers/tomcat-webui/logs/catalina.out"
alias eal="vim /dr01/qadapps/systest/build/logs/as-qra.server.log"
alias eyl="vim /dr01/qadapps/systest/build/logs/yab.log"

## More Aliases
alias econfig="vim /dr01/qadapps/systest/build/config/configuration.properties"
alias sbash="source ~/.bashrc"
alias ebash="vim ~/.bashrc"
alias evim="vim ~/.vimrc"
alias svim="source ~/.vimrc"
alias hs='history | grep'
