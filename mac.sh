#!/bin/bash

# Install Homebrew
sudo rm -rf /usr/local/Homebrew
sudo chown -R $(whoami) /usr/local/*

bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# brew install
bash -c "$(curl -sL https://raw.githubusercontent.com/rwu823/init/HEAD/mac-brew-install.sh)"


# curl install apps
FILE=xgestures180.dmg
curl -LO http://briankendall.net/xGestures/download_files/$FILE
hdiutil attach ./$FILE

mv "/Volumes/xGestures 1/xGestures.prefPane" ~/Library/PreferencePanes/
hdiutil eject "/Volumes/xGestures 1"

rm -rf ./$FILE

# Install agtign.zsh_____________________________
curl -L git.io/antigen > ~/.antigen.zsh


# Fix .ssh Permission________________________
chmod 0600 ~/.ssh/*

# Install node package cli
yarn global add gh wifi-password-cli tldr gtop speed-test serve

# Install Vundle
git clone --depth 1 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall


# set hosts
# sudo ex -sc '1i|0.0.0.0 account.jetbrains.com' -cx /etc/hosts

# fix zsh compaudit
compaudit | xargs chmod g-w
