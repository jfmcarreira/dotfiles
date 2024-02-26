CURRENT_SHELL="zsh"

export LC_ALL=en_GB.UTF-8 && export LANG=en_GB.UTF-8
#export LANG=en_GB.UTF-8
#export LC_CTYPE="UTF-8"

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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

