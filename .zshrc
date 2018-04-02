autoload -Uz compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
prompt walters
alias ls="ls --color"
alias update="pac"
alias config="git --git-dir=$HOME/.gitcfg/ --work-tree=$HOME"
