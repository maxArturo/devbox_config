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

#pretty up completion
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

setopt correctall

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

