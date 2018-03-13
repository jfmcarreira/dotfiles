#!/usr/bin/env bash

# Shell is non-interactive.  Be done now!
[[ $- != *i* ]] && return

if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1

  BASH_BINDING=

  BASH_BINDING="/usr/share/powerline/bash/powerline.sh"
  [[ -f $BASH_BINDING ]] && source $BASH_BINDING

  BASH_BINDING="/usr/share/powerline/bindings/bash/powerline.sh"
  [[ -f $BASH_BINDING ]] && source $BASH_BINDING.

fi
