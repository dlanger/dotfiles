
# if not running interactively, don't do anything
#[ -z "$PS1" ] && return

shopt -s expand_aliases
shopt -s cdspell
shopt -s checkwinsize
shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoredups:ignorespace

export PROMPT_COMMAND='history -a'
export PYTHONPATH=$HOME/bin:$PYTHONPATH
export WORKON_HOME=$HOME/.virtualenvs
export PIP_RESPECT_VIRTUALENV=true

export WHITE='\e[0;0m'
export BLACK='\e[0;30m'
export BLUE='\e[0;34m'
export LIGHT_BLUE='\e[1;34m'
export GREEN='\e[0;32m'
export LIGHT_GREEN='\e[1;32m'
export CYAN='\e[0;36m'
export LIGHT_CYAN='\e[1;36m'
export RED='\e[0;31m'
export LIGHT_RED='\e[1;31m'
export PURPLE='\e[0;35m'
export LIGHT_PURPLE='\e[1;35m'
export BROWN='\e[0;33m'
export YELLOW='\e[0;33m'
export GRAY='\e[1;30m'
export LIGHT_GRAY='\e[0;37m'
export NO_COLOR='\e[0m'

source /usr/local/bin/virtualenvwrapper.sh

if [ -f /etc/bash_completion ]; then
 . /etc/bash_completion
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# prompt from Rawcky
function __git_ps1 ()
{
    local b="$(git symbolic-ref HEAD 2>/dev/null)";
    if [ -n "$b" ]; then
        printf " (%s)" "${b##refs/heads/}";
    fi
}

PS1="\[$RED[\u] $CYAN\w$YELLOW \$(__git_ps1)$WHITE\$\] "

