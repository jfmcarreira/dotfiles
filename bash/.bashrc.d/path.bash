#!/usr/bin/env bash

##################################################
# bashrc - path
##################################################

if [ -d "${HOME}/.bin" ] ; then
  PATH="$HOME/.bin:$PATH"
fi
export PATH
