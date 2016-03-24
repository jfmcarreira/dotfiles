#!/usr/bin/env bash

##################################################
# Alias
##################################################

# only load in gentoo
if [ $(command -v lsb_release >/dev/null 2>&1 && echo true) ] && [ $(lsb_release -i | awk '{ print $3}') == "Gentoo" ]
then
    alias world_update='emerge --update --newuse --deep world'
fi

alias reload='source ~/.bashrc'
alias utop='htop -u jcarreira.it'
alias matlab_cmd='matlab -nosplash -nodesktop -nojvm -nodisplay'
alias process='ps aux | grep -v grep | grep'
alias stowdotfiles='stow -t ~/'
alias ll='ls -l'
alias fix_echo='stty echo'
