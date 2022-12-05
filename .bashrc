
### Bash completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

### Functions
cdls() { echo  && cd "$@" && ls -CF; }
gr () { grep "$@"; }
rgr () { grep -r "$@"; }
fn () { find ./ -name "$@"; }
mkcd() { mkdir -p $1; cd $1; }

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
alias rimraf='rm -rf'

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

## More Aliases
alias sbash="source ~/.bashrc"
alias ebash="vim ~/.bashrc"
alias evim="vim ~/.vimrc"
alias svim="source ~/.vimrc"
alias hs='history | grep'

# Preserve bash history in multiple terminal windows                                                                                                                                                                                                      # Preserve bash history in multiple terminal windows                                                                                                                                                    #
HISTSIZE=9000
HISTFILESIZE=$HISTSIZE
HISTCONTROL=ignorespace:ignoredups

_bash_history_sync() {
  builtin history -a
  HISTFILESIZE=$HISTSIZE
  builtin history -c
  builtin history -r
}

history() {
  _bash_history_sync
  builtin history "$@"
}

PROMPT_COMMAND=_bash_history_sync

alias scripts="cd /dr01/scripts"
alias qad="cd /dr01/qadapps/systest"
alias yu="yab update"
alias yi="yab info -all"
alias yign="yab info -all | grep new"
alias yr="yab -r"
alias ysh="yshell"
alias yst="yab status"
alias y="yab "

alias tcl="tail -f /dr01/qadapps/systest/servers/tomcat-webui/logs/catalina.out"
alias tal="tail -f /dr01/qadapps/systest/build/logs/as-qra.server.log"
alias tyl="tail -f /dr01/qadapps/systest/build/logs/yab.log"

alias ecl="vim /dr01/qadapps/systest/servers/tomcat-webui/logs/catalina.out"
alias eal="vim /dr01/qadapps/systest/build/logs/as-qra.server.log"
alias eyl="vim /dr01/qadapps/systest/build/logs/yab.log"

alias econfig="vim /dr01/qadapps/systest/build/config/configuration.properties"
alias sbash="source ~/.bashrc"
alias ebash="vim ~/.bashrc"
alias evim="vim ~/.vimrc"
alias svim="source ~/.vimrc"
alias hs='history | grep'

alias epost="vim /dr01/scripts/post-startup.sh"
alias epre="vim /dr01/scripts/pre-startup.sh"