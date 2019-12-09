export PATH="$HOME/.nodenv/bin:$PATH"

export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
#export PATH="$(brew --prefix josegonzalez/php/php70)/bin:$PATH"
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/bin
export PATH=$PATH:~/Library/Python/2.7/bin/
export PATH=$PATH:~/Documents/dev/lib/pdfjam/bin/
export PATH=$PATH:~/Documents/dev/scripts/

export GITHUB_TOKEN=382285eed20881aa456252cea21ae27e7777787f

export PATH=$PATH:/Library/TeX/texbin/
eval "$(nodenv init -)"

#export PATH="/Users/kunihikoharada/.phpenv/bin:$PATH"
#eval "$(phpenv init -)"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
alias rm='rm -i'
alias la='ls -la'
alias .='pwd'
alias ..='cd ../'
alias searchcurrent='find . -name'
grepcurrent(){
  grep -n -r $1 .
}
alias find_site_package='python -c "from distutils.sysconfig import get_python_lib; print get_python_lib()"'
alias startdevserver='./node_modules/.bin/gulp dev-server --proxy http://127.0.0.1:8000 --port 8888'

source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\u\[\033[00m\]:\[\033[1;30m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
#export DOCKER_HOST=tcp://127.0.0.1:22375
#export DOCKER_API_VERSION=1.22



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
eval "$(rbenv init -)"


# npm
## 元ネタ: https://github.com/maxogden/maintenance-modules#maintenance-bash-scripts
## 依存 : https://github.com/azu/scoped-modules-checker
function _confirm-npm(){
  echo -n "npm publish to \033[036m$1\033[0m. OK? "
  read INPUT
  echo "\033[31m=>\033[0m \033[036m$1\033[0m"
}
function releaseGitHub(){
  CONVENTIONAL_GITHUB_RELEASER_TOKEN=fa5c4294cc54ba4b08e947e7a81aca20ae50c8b0 conventional-github-releaser -p angular
}
alias npm-patch='_confirm-npm "Public" && pre-version && npm version patch && post-version && npm publish --access=public && releaseGitHub'
alias npm-minor='_confirm-npm "Public" && pre-version && npm version minor && post-version && npm publish --access=public && releaseGitHub'
alias npm-major='_confirm-npm "Public" && pre-version && npm version major && post-version && npm publish --access=public && releaseGitHub'
alias private-npm-patch='_confirm-npm "Private" && scoped-modules-checker && pre-version && npm version patch && post-version && npm publish --access=restricted && releaseGitHub'
alias private-npm-minor='_confirm-npm "Private" && scoped-modules-checker && pre-version && npm version minor && post-version && npm publish --access=restricted && releaseGitHub'
alias private-npm-major='_confirm-npm "Private" && scoped-modules-checker && pre-version && npm version major && post-version && npm publish --access=restricted && releaseGitHub'

alias npm-beta-patch='_confirm-npm "Public" && pre-version && npm version prepatch && post-version && npm publish --tag beta --access=public && releaseGitHub'
alias npm-beta-minor='_confirm-npm "Public" && pre-version && npm version preminor && post-version && npm publish --tag beta --access=public && releaseGitHub'
alias npm-beta-major='_confirm-npm "Public" && pre-version && npm version premajor && post-version && npm publish --tag beta --access=public && releaseGitHub'

alias pre-version='git diff --exit-code && npm prune && npm install -q && dependency-check ./package.json && npm test && git diff --exit-code'
alias post-version='npm run --if-present build && git diff --exit-code && git push && git push --tags'

alias tree='tree -a -I "\.DS_Store|\.git|node_modules|vendor\/bundle" -N'

