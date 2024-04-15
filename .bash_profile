#!/bin/bash
#bash_profile by Andrew East 210806

source ~/.bashrc

export PS1="\u@\h:\w\n$ "
export PS2="$ "

export EDITOR=/usr/bin/vim

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias ll='ls -FGlAhp'
alias cd..='cd ..'
alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

