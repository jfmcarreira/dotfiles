#!/usr/bin/env bash

##################################################
# Custom bashrc
##################################################

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=5000000
HISTFILESIZE=2000

# don't put duplicate lines or lines starting with space in the history. # See bash(1) for more options
HISTCONTROL=ignoredups


# # don't put duplicate lines or lines starting with space in the history.
# # See bash(1) for more options
# HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# # make less more friendly for non-text input files, see lesspipe(1)
# [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

#screenfetch -c ,10
