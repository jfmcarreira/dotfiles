#!/usr/bin/env bash


# Shell is non-interactive.  Be done now!
[[ $- != *i* ]] && return


USE_BASH_IT=true

# bash-it location
export BASH_IT=~/.bashrc.d/bash-it

# location ${BASH_IT}/themes/
#export BASH_IT_THEME='carreira'
export BASH_IT_THEME='powerline-carreira'

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

source ${BASH_IT}/bash_it.sh
