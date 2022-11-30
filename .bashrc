
### Bash completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

### Functions
cdls() { echo  && cd "$@" && ls -CF; }
gr () { grep -r "$@"; }
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
