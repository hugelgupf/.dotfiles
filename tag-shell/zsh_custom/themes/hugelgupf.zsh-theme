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
    'mort' "%F{116}mort"
    'hugelgupf' "%F{168}hugelgupf"
    )

  MY_USERS=('chrisko' 'ckoch' 'chris')

  # user part, color coded by privileges
  local user="%B%(!.%{$fg[red]%}.%{$fg[cyan]%})%n%b%{$reset_color%}"

  # Hostname part. compressed and colorcoded per host_repr array
  # if not found, regular hostname in default color
  local host="${host_repr[$(hostname | cut -d '.' -f 1)]:-%m}%{$reset_color%}"

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

  GIT_PS1_SHOWDIRTYSTATE=1
  GIT_PS1_SHOWSTASHSTATE=1
  GIT_PS1_SHOWUNTRACKEDFILES=1

  # yellow 222
  local branch='%F{222}$(__git_ps1 " [%s]")%f'
  PROMPT="${user_at_host} ${prompt_symbol} "
  RPROMPT="${pwd}${branch}"
}
