export PATH=$PATH:/usr/local/bin

alias rm='rm -i'
alias la='ls -la'
alias .='pwd'
alias ..='cd ../'
alias searchcurrent='find . -name'
grepcurrent(){
  grep -n -r $1 .
}
alias find_site_package='python -c "from distutils.sysconfig import get_python_lib; print get_python_lib()"'

source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\u\[\033[00m\]:\[\033[1;30m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '



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
