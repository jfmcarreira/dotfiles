# Put your fun stuff here.
if [ -d ~/.zshrc.d ] ; then
  for sh in ~/.zshrc.d/*.zsh ; do
    [[ -r ${sh} ]] && source "${sh}"
  done
fi
