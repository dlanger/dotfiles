# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dlanger"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git command-not-found django python git github pip)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

alias k9='kill -9'
alias sr='screen -r -d'
alias nup='ping -c 1 google.ca'

# ack
alias ack='ack-grep'
alias acp='ack-grep --python --ignore-dir=migrations'
alias acj='ack-grep --js --ignore-dir=sitestatic'

# filesystem
alias ~~='cd ~'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls -G --color=yes' 
alias la='ls -Al --color=yes'
alias ll='ls -lh --color=yes'

# git
alias gst='git status'
alias gd='git diff --stat --color' # gd develop..feature-branch_
alias gpr='git pull --rebase'

# envs
export PYTHONPATH=$HOME/bin:$PYTHONPATH
export WORKON_HOME=$HOME/.virtualenvs
export PIP_RESPECT_VIRTUALENV=true
export WAVE_HOME=$HOME/Projects/waveaccounting/
export DJANGO_COLORS='dark'

# virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh

# WA functions
function mig() {
    ~/Projects/waveaccounting/waveaccounting/manage.py schemamigration "$@" --auto;
    ~/Projects/waveaccounting/waveaccounting/manage.py migrate "$@";
}

function cvr() {
    ./manage.py test "$@" -aunit -aintegration --with-coverage --cover-package="$@" --cover-html --cover-erase --settings=quick_testing_settings;
}


