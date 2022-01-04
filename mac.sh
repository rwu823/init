#!/bin/bash

# Install Homebrew
sudo rm -rf /usr/local/Homebrew
sudo chown -R $(whoami) /usr/local/*

bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install dropbox


# curl install AliWangWang
FILE=aliwangwang.dmg
curl -L 'https://alimarket.taobao.com/markets/qnww/aliww-download?spm=a21e4.8043303.0.0.56f53519tGg5Tb&wh_from=macos' -o $FILE
yes | hdiutil attach ./$FILE

mv /Volumes/Aliwangwang/Aliwangwang.app /Applications

hdiutil eject /Volumes/AliWangwang
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
