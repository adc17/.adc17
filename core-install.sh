cd $HOME
touch .hushlogin

echo "Getting command line tools"
xcode-select --install

echo "Setting up homebrew and packages"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew cask install \
  basictex \
  google-chrome \
  haskell-platform \
  iterm2 \
  java \
  ngrok \
  typora

brew install \
  awk \
  curl \
  fd \
  fzf \
  git \
  heroku/brew/heroku \
  httpie \
  hub \
  leiningen \
  neovim \
  nginx \
  planck \
  python \
  python@2 \
  rbenv \
  reattach-to-user-namespace \
  ripgrep \
  rlwrap \
  the_silver_searcher \
  tmux \
  tree \
  watchman \
  z \
  zsh

echo "Setting up SSH"
ssh-keygen -t rsa -b 4096 -C "alexchalk17@gmail.com"
echo "Host *\n  AddKeysToAgent yes\n  UseKeychain yes\n  IdentityFile ~/.ssh/id_rsa" >> $HOME/.ssh/config
eval "$(ssh-agent -s)"
ssh-add -K $HOME/.ssh/id_rsa

echo "Other fun stuff"
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

pip2 install \
  neovim
pip3 install \
  neovim \
  virtualenv \
  virtualenvwrapper

curl -L https://git.io/n-install | bash
npm i -g neovim

rbenv init
echo "Remember to \`rbenv install -l\`, \`rbenv global\`, and \`gem install bundler rubocop neovim\`"
