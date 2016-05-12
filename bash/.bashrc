#!/usr/bin/env bash

# \file .bashrc
# \brief
#   source all files in .bashrc.d
#   all files need to check for interactive shell

# Put your fun stuff here.
if [ -d ~/.bashrc.d ] ; then
    for sh in ~/.bashrc.d/*.bash ; do
        [[ -r ${sh} ]] && source "${sh}"
    done
fi

# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
# Shell is non-interactive.  Be done now!
[[ $- != *i* ]] && return
[ -z "$PS1" ] && return

stty echo

# End

