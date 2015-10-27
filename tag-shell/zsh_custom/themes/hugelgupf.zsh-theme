# modified from theme dieter

typeset -A host_repr

# translate hostnames into shortened, colorcoded strings
host_repr=(
  'login' "%{$fg_bold[blue]%}login"
  'rainbow' "%{$fg_bold[blue]%}rainbow"
  'edison' "%{$fg_bold[blue]%}edison"
  'tesla' "%{$fg_bold[blue]%}tesla"
  'mort.mtv.corp.google.com' "%{$fg_bold[cyan]%}mort"
  )

MY_USERS=('chrisko' 'ckoch' 'chris')

# local time, color coded by last return code
time_enabled="%(?.%{$fg[green]%}.%{$fg[red]%})%*%{$reset_color%} "
time_disabled="%{$fg[green]%}%*%{$reset_color%} "
time=

# user part, color coded by privileges
local user="%B%(!.%{$fg[red]%}.%{$fg[cyan]%})%n%b%{$reset_color%}"

# Hostname part.  compressed and colorcoded per host_repr array
# if not found, regular hostname in default color
local host="${host_repr[$(hostname)]:-%m}%{$reset_color%}"

if [[ ${MY_USERS[(r)$(whoami)]} == $(whoami) ]]; then
  local user_at_host="${host}"
else
  local user_at_host="${user}%F{green} at %f${host}"
fi

local prompt_symbol="%(?.%F{green}.%F{red})::%f"

# Compacted $PWD
local pwd="%{$fg_bold[blue]%}%1~%{$reset_color%}"

local branch='%F{yellow}$(__git_ps1 " [%s] ")%f'
# PROMPT='${host} :: ${pwd} $(git_prompt_info)%B»%b '
PROMPT="${user_at_host} ${prompt_symbol} "
local sym="%B»%b "
RPROMPT="${pwd}${branch}"
# i would prefer 1 icon that shows the "most drastic" deviation from HEAD,
# but lets see how this works out
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}[%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[green]%}]%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}!%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}"

# elaborate exitcode on the right when >0
return_code_enabled="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
return_code_disabled=
return_code=$return_code_enabled

#RPS1='${return_code}'

function accept-line-or-clear-warning () {
  if [[ -z $BUFFER ]]; then
    time=$time_disabled
    return_code=$return_code_disabled
  else
    time=$time_enabled
    return_code=$return_code_enabled
  fi
  zle accept-line
}
zle -N accept-line-or-clear-warning
bindkey '^M' accept-line-or-clear-warning
