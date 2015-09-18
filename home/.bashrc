# enable vim mode
set -o vi
# set fancy PS1 prompt
export PS1='┌── [ \w $(__git_ps1 "(%s)") ]\n└─» '
# sources
source ~/.git-prompt.sh

# aliases
alias wifioff="networksetup -setairportpower en0 off"
alias wifion="networksetup -setairportpower en0 on"
alias wifireboot="wifioff && wifion"
