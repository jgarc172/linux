alias ls='ls -G'
alias ll='ls -l'
export LSCOLORS=AxFxCxDxBxegedabagaced
#export PS1="\W\\$ "
export GOPATH=$HOME/code/go

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1=".../\W/\$(parse_git_branch)$ "

