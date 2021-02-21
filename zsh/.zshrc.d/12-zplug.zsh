export ZPLUG_HOME=$HOME/.zplug

if [[ ! -d $ZPLUG_HOME ]]
then
   git clone https://github.com/zplug/zplug $ZPLUG_HOME
fi

source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-autosuggestions", as:plugin, depth:1
zplug "zsh-users/zsh-syntax-highlighting", as:plugin, depth:1
# Supports oh-my-zsh plugins and the like
zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/zsh-interactive-cd",   from:oh-my-zsh
zplug "plugins/sudo",   from:oh-my-zsh
zplug "plugins/fzf",   from:oh-my-zsh
zplug "plugins/fd",   from:oh-my-zsh
zplug "plugins/alias-finder",   from:oh-my-zsh
zplug "plugins/tmux",   from:oh-my-zsh
