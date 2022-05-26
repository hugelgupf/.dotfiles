PATH="$PATH:$HOME/.local/bin"
TERM="xterm-256color"
EDITOR="vim"

# don't ask to confirm "rm *"
setopt rm_star_silent

#setopt nullglob
#setopt extended_glob

# give an empty list of users to complete
zstyle ':completion:*' users

# try to correct my spelling
setopt correct

# try it on all arguments
setopt correctall

# automatic cd
setopt auto_cd

# have all zsh sessions append to the history file, incrementally (not when
# shell exits)
# this is inc_append_history + importing new commands from history file
# immediately.
setopt share_history

# save date and duration with command in history file
setopt extended_history

for ext in 'c' 'cc' 'h' 'cpp' 'go' 'py'; do
  alias -s ${ext}=vim
done

for ext in 'png' 'jpeg' 'gif' 'jpg'; do
  alias -s ${ext}=feh
done

for ext in 'doc' 'docx' 'odt'; do
  alias -s ${ext}=libreoffice
done

alias -s pdf=google-chrome

alias ls="ls -h --color=auto"
alias irssi="TERM=screen-256color irssi"
alias stripcontrol="sed 's/\[\?7l/m/g'"

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
