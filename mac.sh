#!/bin/bash

# Install Homebrew
sudo rm -rf /usr/local/Homebrew
sudo chown -R $(whoami) /usr/local/*

bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install dropbox

# Install agtign.zsh_____________________________
curl -L git.io/antigen > ~/.antigen.zsh


# Fix .ssh Permission________________________
chmod 0600 ~/.ssh/*

# Install node package cli
yarn global add wifi-password-cli tldr gtop serve react-devtools

# Install Vundle
git clone --depth 1 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall


# set hosts
# sudo ex -sc '1i|0.0.0.0 account.jetbrains.com' -cx /etc/hosts

# fix zsh compaudit
compaudit | xargs chmod g-w
