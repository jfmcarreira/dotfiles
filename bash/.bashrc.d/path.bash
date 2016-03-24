#!/usr/bin/env bash

##################################################
# bashrc - path
##################################################

if [ -d "${HOME}/.bin" ] ; then
  PATH="$PATH:$HOME/.bin"
fi

export PATH
