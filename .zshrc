autoload -Uz compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
prompt walters
alias ls="ls --color"
alias update="pac && pacman -Qe > /home/eetu/.installedPrograms"
alias config="git --git-dir=$HOME/.gitcfg/ --work-tree=$HOME"
alias notes="git --git-dir=$HOME/.vim/Notes/.git --work-tree=$HOME/.vim/Notes"

test -r ~/.dircolors && eval "$(dircolors $HOME/.dircolors)"
