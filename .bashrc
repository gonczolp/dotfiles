#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# defaults
export BROWSER=/usr/bin/chromium
export EDITOR=/usr/bin/nvim

# set vi style editing
set -o vi

# help with misspelled commands
shopt -s cdspell

# check window size with each command
shopt -s checkwinsize

# put multiline commands into one
shopt -s cmdhist

# disable default ctrl+s pause and ctrl+q resume functionality
stty -ixon

# expand options 
shopt -s dotglob
shopt -s expand_aliases
shopt -s extglob

# append history
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTROL=ignoreboth
shopt -s histappend

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
alias df='df -h'
alias du='du -h'
alias cp='cp -i'
alias v='nvim'

# apply powerline
source ~/.bash_powerline

# apply .bash.d
if [ -d ~/.bash.d ]; then
    for i in ~/.bash.d/*; do
        [ -f "${i}" ] && source "${i}"
    done
fi

# auto startx
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi

