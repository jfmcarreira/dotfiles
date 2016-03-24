#!/usr/bin/env bash

##################################################
# bashrc - control PS1
##################################################


function cluster_name ()
{
  if [ $USER == "lljfmc" ]
  then
    echo -e " ${bright_yellow}(HPC)"
  elif [ $USER == "jcarreira.it" ]
  then
    if [ $( hostname ) == "athena" ]
    then
      echo -e " ${bright_cyan}(IT)"
    else
      echo -e " ${bright_yellow}(IT)"
    fi
  fi
}

function prompt_command() {
  PS1="$(battery_char)$(clock_only)${yellow}$(ruby_version_prompt) ${bright_green}\u@\h$(cluster_name) ${bright_blue}\w ${brightblue}\$${reset_color} "
#   PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\]$(cluster_name) \w \$\[\033[00m\] "
}


# Change the window title of X terminals
case ${TERM} in
  [aEkx]term*|rxvt*|gnome*|konsole*|interix)
    PS1='\[\033]0;\u@\h:\w\007\]'
    ;;
  screen*)
    PS1='\[\033k\u@\h:\w\033\\\]'
    ;;
  *)
    unset PS1
    ;;
esac

# Set colorful PS1 only on colorful terminals.
# dircolors --print-database uses its own built-in database
# instead of using /etc/DIR_COLORS.  Try to use the external file
# first to take advantage of user additions.
use_color=false
if type -P dircolors >/dev/null
then
  # Enable colors for ls, etc.  Prefer ~/.dir_colors #64489
  LS_COLORS=
  if [[ -f ~/.dir_colors ]]
  then
    # If you have a custom file, chances are high that it's not the default.
    used_default_dircolors="no"
    eval "$(dircolors -b ~/.dir_colors)"
  elif [[ -f /etc/DIR_COLORS ]]
  then
    # People might have customized the system database.
    used_default_dircolors="maybe"
    eval "$(dircolors -b /etc/DIR_COLORS)"
  else
    used_default_dircolors="yes"
    eval "$(dircolors -b)"
  fi
  if [[ -n ${LS_COLORS:+set} ]]
  then
    use_color=true

    # The majority of systems out there do not customize these files, so we
    # want to avoid always exporting the large $LS_COLORS variable.  This
    # keeps the active env smaller, and it means we don't have to deal with
    # running new/old (incompatible) versions of `ls` compared to when we
    # last sourced this file.
    case ${used_default_dircolors} in
    no) ;;
    yes) unset LS_COLORS ;;
    *)
      ls_colors=$(eval "$(dircolors -b)"; echo "${LS_COLORS}")
      if [[ ${ls_colors} == "${LS_COLORS}" ]] ; then
        unset LS_COLORS
      fi
      ;;
    esac
  fi
  unset used_default_dircolors
else
  # Some systems (e.g. BSD & embedded) don't typically come with
  # dircolors so we need to hardcode some terminals in here.
  case ${TERM} in
  [aEkx]term*|rxvt*|gnome*|konsole*|screen|cons25|*color) use_color=true;;
  esac
fi

if ${use_color}
then

  if [[ ${EUID} == 0 ]]
  then
      PS1+='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
  else
#     if [ $(whoami) == "lljfmc" ]
#     then
#       PS1+='\[\033[01;32m\]\u@\h \[\033[01;33m\](HPC) \[\033[01;34m\]\w \$\[\033[00m\] '
#     elif [ $(whoami) == "jcarreira.it" ]
#     then
#       if [ $( hostname ) == "athena" ]
#       then
#         PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;36m\] (itCluster) \[\033[01;34m\]\w\[\033[01;34m\] \$\[\033[00m\] '
#       else
#         PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;33m\] (itCluster) \[\033[01;34m\]\w\[\033[01;34m\] \$\[\033[00m\] '
#       fi
#     else
        prompt_command
#     fi
  fi
  alias ls='ls --color=auto'
  alias grep='grep --colour=auto'
  alias egrep='egrep --colour=auto'
  alias fgrep='fgrep --colour=auto'
else
  if [[ ${EUID} == 0 ]]
  then
    # show root@ when we don't have colors
    PS1+='\u@\h \W \$ '
  else
    PS1+='\u@\h \w \$ '
  fi
fi
