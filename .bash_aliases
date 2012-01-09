# inspired by dlimeb
alias sr='screen -r -d'
alias cp='cp -i'
alias mv='mv -i'
alias h='history | less'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias nup='ping -c 1 google.ca'
alias serve='python -m SimpleHTTPServer 8080'
alias ~~='cd ~'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias k9='kill -9'
# Don't forget to update /etc/bash_completion.d/git to support it
alias g='git'
alias gst='git status'

alias ls='ls -G --color=auto'   # colourized output TODO linux needs --color
alias la='ls -Al --color=auto'  # show hidden files
alias ll='ls -lh --color=auto'  # plain long ls
alias lx='ls -lXB --color=auto' # sort by extension
alias lk='ls -lSr --color=auto' # sort by size
alias lt='ls -ltr --color=auto' # sort by date
alias lc='ls -lcr --color=auto' # sort by change time
alias lr='ls -lR --color=auto'  # recursive list

# git - use as _gd develop..feature-branch_
alias gd='git diff --stat --color'
alias gpr='git pull --rebase'

# wave-specific
alias ww='workon wave'
alias runsrv='./manage.py runserver 0.0.0.0:8000'
alias runcel='./manage.py celeryd --loglevel=DEBUG'
alias runtest-mem='./manage.py jenkins -v2 --debug --traceback --settings=quick_testing_settings'
alias runtest-full='./manage.py jenkins -v2 --debug --traceback'
alias pyc='pyclean . && python ~/Projects/waveaccounting/waveaccounting/manage.py clean_pyc'
alias vstapp1='ssh -A dlanger@72.51.30.183'
alias vstapp2='ssh -A dlanger@72.51.30.143'
alias vstcel1='ssh -A dlanger@72.51.30.181'
alias vstcel2='ssh -A dlanger@72.51.30.144'
alias vstbeat='ssh -A dlanger@72.51.30.23'
alias vstdb1='ssh -A dlanger@72.51.30.139'
alias vstdb2='ssh -A dlanger@72.51.30.140'
alias vapp1='ssh -A waveaccounting@72.51.30.171'
alias vapp2='ssh -A waveaccounting@72.51.30.172'
alias vcel1='ssh -A waveaccounting@72.51.30.174'
alias vcel2='ssh -A waveaccounting@72.51.30.175'
alias glitch='ssh -A waveaccounting@72.51.30.186'
