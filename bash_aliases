#!/bin/bash
alias cp='cp -i'
alias df='df -h'
alias du='du -h'
alias flushdns='sudo discoveryutil udnsflushcaches'
alias less='less -r'
alias ll='ls -lp'
#alias ls='ls --color=auto'
alias md='mkdir'
alias mtr='mtr -o "LRSD NBAWV"'
alias mv='mv -i'
alias pman='pinfo -m'
alias px='ps xa'
alias rd='rmdir'
alias rm='rm -i'
alias scp='scp -p -r'
alias screen='[ -z "$HUSHLOGIN" ] && TERM=xterm screen -D -RR || TERM=linux screen -D -RR'
alias su='su -'
alias sudo='sudo -s'
alias showextip='curl http://ipecho.net/plain; echo'
alias watch='watch '
alias which='alias | which --tty-only --read-alias --show-dot --show-tilde'
alias who='who -HuT'
alias vim='vim -u $(echo ~artem)/.vimrc'

#OS X Local Web Server
if [[ `uname` == 'Darwin'  ]]; then
    alias nginx.start='sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
    alias nginx.stop='sudo launchctl unload /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
    alias nginx.restart='nginx.stop && nginx.start'
    alias php-fpm.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php56.plist"
    alias php-fpm.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php56.plist"
    alias php-fpm.restart='php-fpm.stop && php-fpm.start'
    alias mysql.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
    alias mysql.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
    alias mysql.restart='mysql.stop && mysql.start'
    alias nginx.logs.error='tail -250f /usr/local/var/log/nginx/error.log'
    alias nginx.logs.access='tail -250f /usr/local/var/log/nginx/access.log'
    alias nginx.logs.default.access='tail -250f /usr/local/var/log/nginx/default.access.log'
    alias nginx.logs.default-ssl.access='tail -250f /usr/local/var/log/nginx/default-ssl.access.log'
    alias nginx.logs.phpmyadmin.error='tail -250f /usr/local/var/log/nginx/phpmyadmin.error.log'
    alias nginx.logs.phpmyadmin.access='tail -250f /usr/local/var/log/nginx/phpmyadmin.access.log'
fi