# migrate to this
for file in ~/.bashrc.d/*.sh;
do
   . $file
done

# PATH
export PATH=/opt/homebrew/bin:$PATH

# 1password ssh agent
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# secrets
for sec in ~/.sec/**;
do
  . $sec
done

# Golang
export GOPATH=~/Go
export PATH="$PATH:$GOPATH/bin:$HOME/bin"

# Alias
alias ll='ls -trl'
alias x='chmod u+x'
alias aa='ssh -l mccance aiadm.cern.ch'
alias rw="tmux rename-window"

# Shell
shopt -s globstar
export HISTCONTROL=ignoreboth
[ -r /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
export EDITOR='/usr/bin/vim'

# Colour
export CLICOLOR=1
export LSCOLORS="gxBxhxDxfxhxhxhxhxcxcx"

# less
export LESS='-R'

# socks alias
alias socks='networksetup -setsocksfirewallproxystate Wi-Fi'

# ITerm
source ~/.iterm2_shell_integration.bash

# locale
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

