export ZPLUG_HOME=$HOME/.zplug

if [[ ! -d $ZPLUG_HOME ]]
then
   git clone https://github.com/zplug/zplug $ZPLUG_HOME
fi

source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-autosuggestions", as:plugin, depth:1
zplug "zsh-users/zsh-syntax-highlighting", as:plugin, depth:1
