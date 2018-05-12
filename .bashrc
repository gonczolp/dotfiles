#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# generated
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/vim

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
alias update='yaourt -Syua --noconfirm'
alias remove='yaourt -Rns'
alias open='xdg-open'

# apply powerline
source ~/.bash-powerline.sh

# auto startx
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi
