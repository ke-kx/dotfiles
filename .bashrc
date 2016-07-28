#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias naon=nano
PS1='[\u@\h \W]\$ '

# Open new tab in current directory
[[ -f /etc/profile.d/vte.sh ]] && . /etc/profile.d/vte.sh

## arrow up
bind '"\e[A": history-search-backward'
## arrow down
bind '"\e[B": history-search-forward'

#append ~/scripts to PATH
export PATH=$PATH:/home/tesuji/scripts
