function battery_charge {
    echo `$BAT_CHARGE` 2>/dev/null
}

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

#local return_status="%{$fg[red]%}%(?..✘)%{$reset_color%}"

## Wrap multiple prompt infos
function git_prompt_info_plus() {
    echo "$(git_prompt_info) $(git_prompt_ahead)$(git_prompt_behind)"
}

# based on nanotech
PROMPT='%F{green}%2c%F{blue} [%f '
RPROMPT='$(virtualenv_info) $(git_prompt_info_plus) %F{blue}] %F{green}%D{%K:%M}'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{yellow}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{red}*%f"
ZSH_THEME_GIT_PROMPT_CLEAN=""

## Git prompt behind
ZSH_THEME_GIT_PROMPT_BEHIND="↓"

## Git prompt ahead
ZSH_THEME_GIT_PROMPT_AHEAD="↑"
