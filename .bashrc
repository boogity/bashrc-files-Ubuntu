# Distribute bashrc into smaller, more specific files
source $HOME/.shells/defaults
source $HOME/.shells/functions
source $HOME/.shells/exports
source $HOME/.shells/alias
source $HOME/.shells/prompt   # All PS1 definitions are here
#source $HOME/.shells/git     # Git aliases and stash-related funcs

# Limit \w PWD in bashrc to $PROMPT_DIRTRIM directories, max
# e.g. 2 == '~/.../LTE/webrtc-r2'
PROMPT_DIRTRIM=2

# Node Version Manager script addition
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
