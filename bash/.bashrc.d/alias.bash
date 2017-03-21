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
alias updatedotfiles='git -C ~/.dotfiles pull && git -C ~/.dotfiles submodule foreach git pull && source ~/.bashrc'

alias utop='htop -u jcarreira.it'
alias matlab_cmd='matlab -nosplash -nodesktop -nojvm -nodisplay'
alias process='ps aux | grep -v grep | grep'
alias stowdotfiles='stow -t ~/'
alias ll='ls -l'
alias katedit='SUDO_EDITOR=kate sudoedit'


alias athena-bin-host='ssh -t athena.itleiria.pt screen -R gentooBinHost -d'


alias pdf2png='convert -density 300 -background white -flatten'
