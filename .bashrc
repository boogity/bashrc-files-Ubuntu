# Distribute bashrc into smaller, more specific files
source $HOME/.shells/defaults   # Maybe this and exports are the same? I forget
source $HOME/.shells/exports    # ENV vars and keybindings
source $HOME/.shells/functions  # Custom multi-line functions
source $HOME/.shells/alias      # Custom one-line aliases
source $HOME/.shells/prompt     # All PS1 definitions are here
#source $HOME/.shells/git       # Git aliases and stash-related funcs

# Node Version Manager script addition
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
