#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# defaults
export BROWSER=/usr/bin/brave
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

# paths
PATH=$PATH:~/.cargo/bin

# aliases
alias ls='ls --group-directories-first --color=auto -F'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias l='exa --group-directories-first --git --classify'
alias ll='exa --group-directories-first --git --long --classify'
alias lll='exa --group-directories-first --git --long --classify --all'
alias llt='exa --group-directories-first --git --long --classify --all --tree --level'
alias open='xdg-open'
alias df='df -h'
alias du='du -h'
alias cp='cp -i'
alias v='nvim'
alias n='nnn'
alias blu='bluetoothctl'

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

