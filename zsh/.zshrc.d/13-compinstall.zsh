# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit

autoload bashcompinit
bashcompinit

if [ -d ~/.zsh_completion.d ] ; then
    for sh in ~/.zsh_completion.d/*; do
        [[ -r ${sh} ]] && source "${sh}"
    done
fi
