##################################################
# Alias
##################################################

if [ $(command -v lsb_release >/dev/null 2>&1 && echo true) ] && [ $(lsb_release -i | awk '{ print $3}') == "Gentoo" ]
then
    alias world_update='emerge --update --newuse --deep world'
fi

alias utop='htop -u jcarreira.it'
alias matlab_cmd='matlab -nosplash -nodesktop -nojvm -nodisplay'
alias process='ps aux | grep -v grep | grep'
alias ll='ls -l --color=auto'
alias stowdotfiles='stow -t ~/'
alias fix_echo='stty echo'

#alias betty="~/Programming/betty/main.rb"
