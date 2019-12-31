ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/cask-fonts

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
  tig \
  autojump \
  zsh-syntax-highlighting \
  fzf \
  lsd \
  global \
  jid \
  zsh

brew cask install font-source-code-pro \
  font-hack-nerd-font \
  iterm2    \
  spotify   \
  keepassx  \
  spectacle 

# vim setup
git clone https://github.com/maxArturo/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

ln -s ~/devbox_config/home/.git_prompt.zsh ~/
ln -s ~/devbox_config/home/.aliases ~/
ln -s ~/devbox_config/home/.zshrc ~/
ln -s ~/devbox_config/home/.gitconfig ~/
ln -s ~/devbox_config/home/.gitignore ~/

