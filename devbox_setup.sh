ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew install brew-cask
brew install git
brev install vim
brew install emacs
brew install mysql
brew install rbenv
brew install ruby-build
brew install rbenv-gemset
rbenv install 2.2.0

# vagrant setup commands
brew cask install virtualbox
brew cask install vagrant
brew cask install vagrant-manager
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-librarian-chef-nochef
