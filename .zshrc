
# PROMPT="%n@%m %2~ %# "
PROMPT="%n %2~ %# "

set -o vi

alias im="ipython --matplotlib"
alias sync_algo='rsync -aUvhP --exclude=".*" --exclude="*.log" --exclude="__pycache__" $HOME/Documents/codes/algotrading/ h@h-hp:/home/h/Documents/algo/'
alias sync_scraper='rsync -aUvhP --delete --exclude="*.json" --exclude="data" --exclude="node_modules" --exclude="*log" --exclude=".git*" --exclude="__pycache__" $HOME/Documents/codes/scraper/ h@h-hp:/home/h/Documents/scraper'
alias hp='ssh hp'
alias graph="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all"
alias graph1="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"
alias ls="ls -al"

export PATH="$PATH:$HOME/documents/codes"
export PATH="$PATH:$HOME/documents/codes/random_python"
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

bindkey "^R" history-incremental-pattern-search-backward

export HISTFILE=~/.zsh_history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "
setopt HIST_FIND_NO_DUPS


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
