# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=500000
SAVEHIST=500000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

autoload -Uz compinit
compinit
# End of lines added by compinstall

## Base ZSH setup##
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

setopt correctall

################
# Vi section
################

bindkey -v
export KEYTIMEOUT=1

################
# Prompt
################

PROMPT='%F{red}%n%f%F{blue}%@%f%F{yellow} [%~]%f %# '

source ~/.git_prompt.zsh

# Brew
export PATH="/usr/local/bin:$PATH"

# For rbenv.
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Local bin folder
export PATH="$HOME/bin:$PATH"

# NVM
export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

# Handy aliases
source ~/.aliases

# go home directory
export GOPATH=$HOME/.go

export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# TeX Paths
export PATH=$PATH:/Library/TeX/texbin

# gcp goodies
# source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
# source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

# yarn goodies
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# add syntax for zsh prompt
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Setup fzf for zsh
# ---------
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="$PATH:/usr/local/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/usr/local/opt/fzf/shell/key-bindings.zsh"

# autojumping (https://github.com/wting/autojump), to uninstall: clone git dir and run ./uninstall.py
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# specific config for whatever co you're on
[ -f ~/.jobrc ] && source ~/.jobrc

