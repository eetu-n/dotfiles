autoload -Uz compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
prompt walters
alias config="git --git-dir=$HOME/.gitcfg/ --work-tree=$HOME"
alias notes="git --git-dir=$HOME/.vim/Notes/.git --work-tree=$HOME/.vim/Notes"
alias econnect="mosh eetu.dev"

test -r ~/.dircolors && eval "$(dircolors $HOME/.dircolors)"

export EDITOR=vim

# Vim keybindings
bindkey -v

# Makes history search with what's already written
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# Fix SSH behaviour
if [[ -n "$SSH_CLIENT"  ||  -n "$SSH2_CLIENT" ]]; then
    TERM=xterm-256color
fi

# Enable ssh-agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > /tmp/ssh-agent-pid
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    eval "$(</tmp/ssh-agent-pid)" > /dev/null
fi

type thefuck > /dev/null
if [ "$?" -eq "0" ]; then
    eval $(thefuck --alias)
fi

type lsd > /dev/null
if [ "$?" -eq "0" ]; then
    alias ls="lsd"
else;
    alias ls="ls --color"
fi

unsetopt BEEP

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

source ~/.localOptions

