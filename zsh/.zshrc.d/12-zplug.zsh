export ZPLUG_HOME=$HOME/.zplug

if [[ ! -d $ZPLUG_HOME ]]
then
   git clone https://github.com/zplug/zplug $ZPLUG_HOME
fi

source $ZPLUG_HOME/init.zsh

zplug "romkatv/powerlevel10k", as:theme, depth:1
zplug "zsh-users/zsh-autosuggestions", as:plugin, depth:1
zplug "zsh-users/zsh-syntax-highlighting", as:plugin, depth:1

# Install plugins if there are plugins that have not been installed
if ! zplug check; then
  zplug install
fi

# Then, source plugins and add commands to $PATH
zplug load
