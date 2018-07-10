#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# defaults
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/vim
set -o vi

# aliases
alias ls='ls --group-directories-first --color=auto -F'
alias grep='grep --color=auto'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias ll='ls -la'
alias open='xdg-open'

# apply powerline
source ~/.bash-powerline.sh

# auto startx
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi
