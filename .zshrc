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
plugins=(git command-not-found python pip virtualenvwrapper zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh


# Customize to your needs...
export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

# tmux
export EDITOR=geany

# hack so tmux uses $TERM='screen' --> CentOS doesn't support screen-256
if [ -n "$TMUX" ]; then
    export TERM='screen'
fi

# aliases
source ~/.aliases

# envs
export PYTHONPATH=$HOME/bin:$PYTHONPATH
export WORKON_HOME=$HOME/.virtualenvs
export PIP_RESPECT_VIRTUALENV=true
export WAVE_HOME=$HOME/Projects/waveaccounting/
export DJANGO_COLORS='dark'
export VMFARMS_SSH_USER='dlanger'
export GITHUB_USERNAME='dlanger'

# virtualenvwrapper
#source /usr/local/bin/virtualenvwrapper.sh

# seahorse key manager
export $(gnome-keyring-daemon --daemonize --start)

function cvr() {
    ./manage.py test "$@" -aunit -aintegration --with-coverage --cover-package="$@" --cover-html --cover-erase;
}

# rvm
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# perl
export PERL_LOCAL_LIB_ROOT="/home/dan/perl5";
export PERL_MB_OPT="--install_base /home/dan/perl5";
export PERL_MM_OPT="INSTALL_BASE=/home/dan/perl5";
export PERL5LIB="/home/dan/perl5/lib/perl5/x86_64-linux-gnu-thread-multi:/home/dan/perl5/lib/perl5";
export PATH="/home/dan/perl5/bin:$PATH";
