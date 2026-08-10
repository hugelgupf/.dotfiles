# Cortex CLI completion (disable via /settings in cortex)
[[ -s ~/.zsh/completions/cortex.zsh ]] && source ~/.zsh/completions/cortex.zsh

# sfid
eval "$(sf aliases)"

export PATH="$HOME/.opengrep/cli/latest:$PATH"
export SNOWFLAKE_DEFAULT_CONNECTION_NAME=snowhouse
