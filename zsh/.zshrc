
# Put your fun stuff here.
if [ -d ~/.zshrc.d ] ; then
  for sh in ~/.zshrc.d/*.zsh ; do
    [[ -r ${sh} ]] && source "${sh}"
  done
fi


# Generic stuff for multiple shells
if [ -d ~/.env.d ] ; then
    for sh in ~/.env.d/*.sh ; do
        [[ -r ${sh} ]] && source "${sh}"
    done
fi
