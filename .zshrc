# Minimal ohmyzsh config that I like to use on own servers

ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
export UPDATE_ZSH_DAYS=13
export EDITOR='vim'
export ZSH=$HOME/.oh-my-zsh

plugins=(git pip python postgres command-not-found supervisor tmux)

source $ZSH/oh-my-zsh.sh

