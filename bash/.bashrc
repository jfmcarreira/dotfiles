# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !

if [ -f ~/.bashrc_prefix ] ; then
    source ~/.bashrc_prefix
fi






# Put your fun stuff here.
if [ -d ~/.bashrc.d ] ; then
    for sh in ~/.bashrc.d/*.bash ; do
        [[ -r ${sh} ]] && source "${sh}"
    done
fi

if [ -f ~/.bashrc_private ] ; then
    source ~/.bashrc_private
fi

# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
# Shell is non-interactive.  Be done now!
[[ $- != *i* ]] && return
[ -z "$PS1" ] && return



USE_BASH_IT=false
stty echo

# End

