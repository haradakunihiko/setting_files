export PATH=$PATH:/usr/local/bin
export PATH=$HOME/.nodebrew/current/bin:$PATH
#export GOOGLE_APPLICATION_CREDENTIALS=/Users/haradakunihiko/Documents/dev/codegym/codegym-test-1b7f619850bc.json
# for cabal-dev
#export PATH="$HOME/Library/Haskell/ghc-7.4.2/lib/cabal-dev-0.9.2/bin:$PATH"

alias rm='rm -i'
alias la='ls -la'
alias .='pwd'
alias ..='cd ../'
alias searchcurrent='find . -name'
grepcurrent(){
  grep -n -r $1 .
}
alias find_site_package='python -c "from distutils.sysconfig import get_python_lib; print get_python_lib()"'

### Added by the Heroku Toolbelt
#export PATH="/usr/local/heroku/bin:$PATH"
#source ~/.git-completion.bash
#source ~/.git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh
#source /usr/local/Cellar/git/2.10.0/etc/bash_completion.d/git-completion.bash
#source /usr/local/Cellar/git/2.10.0/etc/bash_completion.d/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
#PS1='\[\033[40;1;32m\]\u\[\033[2;32m\]@\[\033[0m\]\[\033[40;32m\] \[\033[1;36m\]\w \[\033[31m\]$(__git_ps1 "[%s]")\[\033[00m\] \[\033[0m\]\[\033[40;2;37m\] $ '
#PS1='\[\033[32m\]\u@\[\033[1;36m\]\W \[\033[31m\]$(__git_ps1 "[%s]")\[\033[00m\]\$ '
export PS1='\[\033[32m\]\u\[\033[00m\]:\[\033[1;30m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '



#export PS1=$PS1


function light() {
  if [ -z "$2" ]
    then src="pbpaste"
  else
    src="cat $2"
  fi
  $src | highlight -O rtf --syntax $1 --font Inconsolata --style solarized-dark --font-size 24 | pbcopy
}

export LESS='-R'
export LESSOPEN='|/usr/local/bin/src-hilite-lesspipe.sh %s'
