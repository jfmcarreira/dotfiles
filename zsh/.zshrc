CURRENT_SHELL="zsh"

# Generic stuff for multiple shells
if [ -d ~/.env.d ] ; then
    for sh in ~/.env.d/*.sh ; do
        [[ -r ${sh} ]] && source "${sh}"
    done
fi

# Put your fun stuff here.
if [ -d ~/.zshrc.d ] ; then
  for sh in ~/.zshrc.d/*.zsh ; do
    [[ -r ${sh} ]] && source "${sh}"
  done
fi




# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
	autoload -Uz add-zle-hook-widget
	function zle_application_mode_start { echoti smkx }
	function zle_application_mode_stop { echoti rmkx }
	add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
	add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi
