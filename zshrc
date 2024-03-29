# Path to your oh-my-zsh installation.
export ZSH=/home/tesuji/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#interesting themes: avit, spaceship, strug
ZSH_THEME="spaceship"
SPACESHIP_DIR_TRUNC=5
SPACESHIP_VI_MODE_SHOW=false

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git gitfast archlinux systemd zsh-autosuggestions colored-man-pages sudo wd common-aliases svn gradle z)


# User configuration
export PATH=$PATH:$HOME/repos/scripts:$HOME/repos/overtime-calculator

# Check for system update if script is in PATH
if system_update_script="$(type -p system-update-prompt.sh)" && [ -n "$system_update_script" ]; then
    # Set the amount of days past for system update promt
    export UPDATE_SYSTEM_DAYS=3
    # Run the script
    system-update-prompt.sh
fi

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ls='ls --color=auto'
alias l='ls -lh --group-directories-first'
alias ll='l -a'
alias open='open_command'

# git aliases
alias gfom='git fetch origin master:master'
alias gdc='git diff --cached'

# typofixes
alias cd..='cd ..'
alias naon='nano'

# use normal commands instead of those provided by common aliases
unalias mv
unalias cp
unalias rm

# more flexible move
autoload -U zmv
alias mmv='noglob zmv -W'

function chpwd(){
    emulate -LR zsh
    ls
}

# VIM Mode
bindkey -v
export KEYTIMEOUT=1

# History Control (Arrow up and down use already entered text)
bindkey "^[OA" history-search-backward
bindkey "^[OB" history-search-forward
bindkey -M vicmd 'k' history-beginning-search-backward
bindkey -M vicmd 'j' history-beginning-search-forward

# fix home and end keys
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line

# fix del etc
bindkey "${terminfo[kdch1]}" delete-char

# Open new tab in current directory
[[ -f /etc/profile.d/vte.sh ]] && . /etc/profile.d/vte.sh

# fzf
if [ -e /usr/share/fzf/completion.zsh ]; then
    source /usr/share/fzf/key-bindings.zsh
    source /usr/share/fzf/completion.zsh
    export FZF_DEFAULT_COMMAND='ag --nocolor -g ""'
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
    export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
    export FZF_DEFAULT_OPTS=' --color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108 --color info:108,prompt:109,spinner:108,pointer:168,marker:168'
fi

