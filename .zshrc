autoload -Uz compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
prompt walters
alias ls="ls --color"
alias update="pac"
alias config="git --git-dir=$HOME/.gitcfg/ --work-tree=$HOME"
alias notes="git --git-dir=$HOME/.vim/misc/notes/user/.git --work-tree=$HOME/.vim/misc/notes/user"

test -r ~/.dircolors && eval "$(dircolors $HOME/.dircolors)"
