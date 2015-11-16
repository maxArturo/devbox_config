xcode-select --install #manual

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew install brew-cask
brew install git
brew install vim
brew install mysql
brew install rbenv
brew install ruby-build
brew install rbenv-gemset
brew install the_silver_seacher
rbenv install 2.2.3
brew cask install iterm2
brew cask install atom

# vim setup
git clone https://github.com/maxArturo/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# vagrant setup commands
brew cask install virtualbox
brew cask install vagrant
brew cask install vagrant-manager
vagrant plugin install vagrant-vbguest
