xcode-select --install #manual

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew tap caskroom/fonts    
brew install brew-cask \
  git \
  vim \
  rbenv \
  antigen \
  ruby-build \
  the_silver_searcher \
  colordiff \
  cmus \
  python \
  virtualbox \
  vagrant-manager \
  httpie \
  vagrant

brew cask install font-source-code-pro \
  iterm2

rbenv install 2.4.0

# vim setup
git clone https://github.com/maxArturo/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# vagrant setup commands
vagrant plugin install vagrant-vbguest

# python setup

cp -r home/ ~/
source ./aliases

