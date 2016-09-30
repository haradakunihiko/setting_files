export PYENV_ROOT="${HOME}/.pyenv"
#export GOOGLE_APPLICATION_CREDENTIALS=codegym-test-servicekey.json
export PATH=${PYENV_ROOT}/bin:$PATH
eval "$(pyenv init -)"
export PATH=$HOME/.rbenv/shims:$PATH
eval "$(rbenv init -)"
export PATH=$PATH:~/.composer/vendor/bin
export PATH=$PATH:/usr/local/bin
export NVM_DIR=~/.nvm
export PATH=$PATH:/Library/TeX/texbin
source $(brew --prefix nvm)/nvm.sh
#export JAVA_HOME=/Library/Java/Home
#export DYLD_LIBRARY_PATH=/usr/local/cuda/lib:$DYLD_LIBRARY_PATH
#export C_INCLUDE_PATH="/Developer/GPU Computing/C/common/inc"
#export CPLUS_INCLUDE_PATH="/Developer/GPU Computing/C/common/inc"
#export PATH="$HOME/Library/Haskell/bin:$PATH"
#export PATH="$PATH:~/bin"

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

source /usr/local/Cellar/git/2.4.5/etc/bash_completion.d/git-prompt.sh
source /usr/local/Cellar/git/2.4.5/etc/bash_completion.d/git-completion.bash

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
