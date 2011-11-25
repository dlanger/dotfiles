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

alias ls='ls -G --color=auto'   # colourized output TODO linux needs --color
alias la='ls -Al --color=auto'  # show hidden files
alias ll='ls -lh --color=auto'  # plain long ls
alias lx='ls -lXB --color=auto' # sort by extension
alias lk='ls -lSr --color=auto' # sort by size
alias lt='ls -ltr --color=auto' # sort by date
alias lc='ls -lcr --color=auto' # sort by change time
alias lr='ls -lR --color=auto'  # recursive list

# wave-specific
alias ww='workon wave'
alias runsrv='./manage.py runserver 0.0.0.0:8000'
alias runcel='./manage.py celeryd --loglevel=INFO'
