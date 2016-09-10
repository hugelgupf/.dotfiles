# modified from theme dieter
typeset -A host_repr

() {
# translate hostnames into shortened, colorcoded strings
  host_repr=(
    'login' "%{$fg_bold[blue]%}login"
    'ada' "%{$fg_bold[blue]%}ada"
    'rainbow' "%{$fg_bold[blue]%}rainbow"
    'edison' "%{$fg_bold[blue]%}edison"
    'tesla' "%{$fg_bold[blue]%}tesla"
    'winterberg' "%{$fg_bold[blue]%}winterberg"
    'mort.mtv.corp.google.com' "%F{116}mort"
    )

  MY_USERS=('chrisko' 'ckoch' 'chris')

# user part, color coded by privileges
  local user="%B%(!.%{$fg[red]%}.%{$fg[cyan]%})%n%b%{$reset_color%}"

# Hostname part. compressed and colorcoded per host_repr array
# if not found, regular hostname in default color
  local host="${host_repr[$(hostname)]:-%m}%{$reset_color%}"

# Don't tell me who I am when I'm myself
  if [[ ${MY_USERS[(r)$(whoami)]} == $(whoami) ]]; then
    local user_at_host="${host}"
  else
    local user_at_host="${user}%F{green} at %f${host}"
  fi

# 179 red
  local prompt_symbol="%(?.%F{green}.%F{179})::%f"

# Compacted $PWD
# local pwd="%{$fg_bold[179]%}%2~%{$reset_color%}"
  local pwd="%F{116}%2~%{$reset_color%}"

# yellow 222
  local branch='%F{222}$(__git_ps1 " [%s]")%f'
  PROMPT="${user_at_host} ${prompt_symbol} "
  RPROMPT="${pwd}${branch}"

  GIT_PS1_SHOWDIRTYSTATE=1
  GIT_PS1_SHOWSTASHSTATE=1
  GIT_PS1_SHOWUNTRACKEDFILES=1
}

# i would prefer 1 icon that shows the "most drastic" deviation from HEAD,
# but lets see how this works out
#ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}[%{$fg[yellow]%}"
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[green]%}]%{$reset_color%} "
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}!%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}"
