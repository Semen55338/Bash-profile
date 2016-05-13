#Colored output for 'ls' and 'grep'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias less='less -r'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Management services like a RHEL\Centos
if [[ `uname` == 'Darwin' ]]; then
  alias systemctl='brew services'
fi
