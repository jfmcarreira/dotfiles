# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit

autoload bashcompinit
bashcompinit

if [ -d $HOME/.zsh_completion.d ] ; then
    for sh in $HOME/.zsh_completion.d/*; do
        [[ -r ${sh} ]] && source "${sh}"
    done
fi

zstyle ':completion:*' special-dirs true
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
setopt autocd
