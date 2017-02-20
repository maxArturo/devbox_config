# For Homebrew.
export PATH="/usr/local/bin:$PATH"

# For rbenv.
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# NVM
# [[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh 
export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh


export PATH="$HOME/bin:$PATH"

# enable vim mode
set -o vi

# set fancy PS1 prompt

print-line() {
  printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
}

export PS1='$(print-line)\n┌── [ \w $(__git_ps1 "(%s)") ]\n└─» '

# sources
source ~/.git-prompt.sh
source ~/.aliases
source ~/git-completion.bash

# aliases
alias wifioff="networksetup -setairportpower en0 off"
alias wifion="networksetup -setairportpower en0 on"
alias wifireboot="wifioff && wifion"

# git aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.c commit
git config --global alias.s status

# go home directory
export GOPATH=$HOME/.go

export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin

