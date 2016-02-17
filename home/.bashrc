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
export PS1='┌── [ \w $(__git_ps1 "(%s)") ]\n└─» '

# sources
source ~/.git-prompt.sh
source ~/.aliases
source ~/git-completion.bash

# aliases
alias wifioff="networksetup -setairportpower en0 off"
alias wifion="networksetup -setairportpower en0 on"
alias wifireboot="wifioff && wifion"
