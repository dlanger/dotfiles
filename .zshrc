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
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git command-not-found python pip colorize virtualenvwrapper aws zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/dan/bin:/usr/local/node/bin:/opt/packer

# goland
export PATH=$PATH:/usr/local/go/bin
export GOPATH=/home/dan/Projects/go

# tmux
export EDITOR=geany

# hack so tmux uses $TERM='screen' --> CentOS doesn't support screen-256
#if [ -n "$TMUX" ]; then
#    export TERM='screen'
#fi

export TERM='xterm'

# ctrl-left and ctrl-right should work correctly
bindkey '5D' emacs-backward-word
bindkey '5C' emacs-forward-word

# aliases
source ~/.aliases

# envs
export PYTHONPATH=$HOME/bin:$PYTHONPATH
export WORKON_HOME=/analysis/.virtualenvs
export PIP_RESPECT_VIRTUALENV=true
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export DJANGO_COLORS='dark'
export VMFARMS_SSH_USER='dlanger'
export GITHUB_USERNAME='dlanger'
export VIRTUALENV_DISTRIBUTE=true
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS="--python=/usr/local/python2.7.6/bin/python"


# virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh

# seahorse key manager
# export $(gnome-keyring-daemon --daemonize --start)

# pip cache
export PIP_DOWNLOAD_CACHE=/analysis/.pip_download_cache

function cvr() {
    ./manage.py test "$@" -aweb -aunit -aintegration --with-coverage --cover-package="$@" --cover-html --cover-erase --noinput;
}


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
