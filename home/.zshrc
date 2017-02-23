# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/rtuser/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

## Base ZSH setup##
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

setopt correctall

autoload -U promptinit
promptinit

#
# Antigen section
#

source /usr/local/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle command-not-found

antigen theme af-magic

# Brew
export PATH="/usr/local/bin:$PATH"

# For rbenv.
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Local bin folder
export PATH="$HOME/bin:$PATH"

# Handy aliases
source ~/.aliases

# go home directory
export GOPATH=$HOME/.go

export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# RT base directory
export RT_DIR=${HOME}/Developer/rt

source ~/.rtx-rc

