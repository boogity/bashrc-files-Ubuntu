# Distribute bashrc into smaller, more specific files
source $HOME/.shells/defaults
source $HOME/.shells/functions
source $HOME/.shells/exports
source $HOME/.shells/alias
source $HOME/.shells/prompt   # Fancy prompt with time and current working dir
#source $HOME/.shells/git      # Conveniences - Display current branch etc

# Limit \w PWD in bashrc to $PROMPT_DIRTRIM directories, max
# e.g. 2 == '~/.../LTE/webrtc-r2'
PROMPT_DIRTRIM=2

# if [-n "$force_color_prompt" ]; then
#PS1="\[$COLOR_CYAN\]┌─(\[$COLOR_NC\]\u@\h\[$COLOR_CYAN\])─\${fill}─\
#(\[$COLOR_NC\]\$(date \"+%a, %d %b %y\")\[$COLOR_CYAN)\]─┐\n\
#\[$COLOR_CYAN\]└─(\[$COLOR_YELLOW\]\w\[$COLOR_CYAN\])─\${fill}─(\[$COLOR_NC\]\$(date +%H:%M)\[$COLOR_CYAN\])─>\[$COLOR_NC\]"

# Node Version Manager script addition
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
