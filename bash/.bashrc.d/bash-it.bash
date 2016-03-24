#!/usr/bin/env bash

if [ -d ~/.bashrc.d/bash-it ]
then

  source ~/.bashrc.d/bash-it/composure.bash



  for sh in ~/.bashrc.d/bash-it/*.bash
  do
      [[ -r ${sh} ]] && source "${sh}"
  done
fi
