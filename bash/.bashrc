# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !

if [ -f ~/.bashrc_prefix ] ; then
    source ~/.bashrc_prefix
fi

# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
  # Shell is non-interactive.  Be done now!
  return
fi

# If not running interactively, don't do anything
[ -z "$PS1" ] && return


# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# Put your fun stuff here.
if [ -d ~/.bashrc.d ] ; then
    for sh in ~/.bashrc.d/*.bash ; do
        [[ -r ${sh} ]] && source "${sh}"
    done
fi

if [ -f ~/.bashrc_private ] ; then
    source ~/.bashrc_private
fi


USE_BASH_IT=false

# End

