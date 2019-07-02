autoload -Uz compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
prompt walters
alias ls="ls --color"
alias update="yay -Syu && pacman -Qei | grep -e Name -e Version -e Description -e '^$' | tee /home/eetu/.installedPrograms > /dev/null"
alias config="git --git-dir=$HOME/.gitcfg/ --work-tree=$HOME"
alias notes="git --git-dir=$HOME/.vim/Notes/.git --work-tree=$HOME/.vim/Notes"
alias econnect="mosh eetu.dev"

test -r ~/.dircolors && eval "$(dircolors $HOME/.dircolors)"

# Vim keybindings
bindkey -v

# Makes history search with what's already written
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# Fix SSH behaviour
if [[ -n "$SSH_CLIENT"  ||  -n "$SSH2_CLIENT" ]]; then
    TERM=xterm-256color
fi
