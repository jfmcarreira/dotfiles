[[ -f /usr/share/fzf/key-bindings.bash ]] && source /usr/share/fzf/key-bindings.zsh
[[ -f /usr/share/fzf/completion.bash ]] && source /usr/share/fzf/completion.zsh


[[ -f /usr/share/doc/fzf/examples/completion.bash ]] && source /usr/share/doc/fzf/examples/completion.zsh
[[ -f /usr/share/doc/fzf/examples/key-bindings.bash ]] && source /usr/share/doc/fzf/examples/key-bindings.zsh

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f'
# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
