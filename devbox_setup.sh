ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew tap caskroom/fonts    
brew install \
  git \
  vim \
  rbenv \
  ruby-build \
  the_silver_searcher \
  nvm \
  colordiff \
  cmus \
  ncdu \
  neovim

brew cask install font-source-code-pro \
  iterm2    \
  spotify   \
  keepassx  \
  spectacle \

rbenv install 2.4.0

# vim setup
git clone https://github.com/maxArturo/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

ln -s ~/devbox_config/home/.git_prompt.zsh ~/
ln -s ~/devbox_config/home/.aliases ~/
ln -s ~/devbox_config/home/.zshrc ~/

