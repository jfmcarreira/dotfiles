#!/usr/bin/env bash


# Shell is non-interactive.  Be done now!
[[ $- != *i* ]] && return

USE_BASH_IT=true

# bash-it location
export BASH_IT=~/.bashrc.d/bash-it

# location ${BASH_IT}/themes/
export BASH_IT_THEME='powerline-carreira'
export CLUSTER_INFO_USER=jcarreira.it

if [[ ${EUID} == 0 ]]
then
  export POWERLINE_LEFT_PROMPT=${POWERLINE_PROMPT:="carreira_root_info cwd "}
  export POWERLINE_RIGHT_PROMPT=
else
  export POWERLINE_LEFT_PROMPT=${POWERLINE_LEFT_PROMPT:="scm python_venv ruby cwd"}
  export POWERLINE_RIGHT_PROMPT=${POWERLINE_RIGHT_PROMPT:="in_vim clock battery carreira_user_info"}
fi
export POWERLINE_PADDING=2

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

source ${BASH_IT}/bash_it.sh
