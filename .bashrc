#TODO: Come up with a good function to output STDERRED in red. 

export USERNAME="William"
export NICKNAME="Willy"
# export newPWD="...$(echo -n $PWD | sed -e "s/\(^.\{$cutt\}\)\(.*\)/\2/")"
# Distribute bashrc into smaller, more specific files

source .shells/defaults
source .shells/functions
source .shells/exports
source .shells/alias
source .shells/prompt   # Fancy prompt with time and current working dir
#source .shells/git      # Conveniences - Display current branch etc


# Welcome message
echo -ne "Good Morning, $NICKNAME! It's "; date '+%A, %B %-d %Y'
echo -e "$COLOR_LIGHT_CYAN Hardware Information: "
sensors  # Needs: 'sudo apt-get install lm-sensors'
uptime   # Needs: 'sudo apt-get install lsscsi'
lsscsi
free -m 

# if [-n "$force_color_prompt" ]; then
PS1="\[$COLOR_CYAN\]┌─(\[$COLOR_NC\]\u@\h\[$COLOR_CYAN\])─\${fill}─(\[$COLOR_NC\]\$(date \"+%a, %d %b %y\") \
\[$COLOR_CYAN)\]─┐\n\
\[$COLOR_CYAN\]└─(\[$COLOR_YELLOW\]\w\[$COLOR_CYAN\])─\${fill}─(\[$COLOR_NC\]\$(date \"+%H:%M\") $(parse_git_branch)\[$COLOR_CYAN\])─>\[$COLOR_NC\]"
    


#     PS1="$COLOR_CYAN($orange\u@\h \$(date \"+%a, %d %b %y\")$COLOR_CYAN)─\${fill}─($orange\$newPWD\
# $COLOR_CYAN)─┐\n$COLOR_CYAN($orange\$(date \"+%H:%M\") \$$COLOR_CYAN)─>$COLOR_NC "
#     ;;    
#     *)
#     PS1="┌─(\u@\h \$(date \"+%a, %d %b %y\"))─\${fill}─(\$newPWD\
#         )─┐\n└─(\$(date \"+%H:%M\") $(parse_git_branch) \$)─> "
#     ;;
# esac
