#!/bin/bash

brew update

brew tap homebrew/cask-fonts
# brew tap homebrew/cask-versions
# brew tap beeftornado/rmtree

# cli
brew install tmux reattach-to-user-namespace
brew install git-lfs
brew install ssh-copy-id
brew install node
brew install yarn
brew install tig
brew install fzf
bash $(brew --prefix)/opt/fzf/install
brew install ripgrep
brew install fd
brew install exa
brew install fnm
brew install code-server
brew install gh
brew install google-cloud-sdk

# cask
brew install --cask microsoft-edge
brew install --cask raycast
brew install --cask karabiner-elements
brew install --cask omnidisksweeper
brew install --cask keka
brew install --cask snipaste
brew install --cask bettertouchtool
brew install --cask keyboard-cleaner
# brew install --cask iterm2
brew install --cask warp
brew install --cask visual-studio-code
# brew install --cask docker
brew install --cask skype
brew install --cask messenger
brew install --cask eudic
brew install --cask alt-c
brew install --cask discord
brew install --cask meetingbar
brew install --cask telegram
brew install --cask iina

# font
brew install font-fira-code
brew install font-victor-mono
brew install font-sf-mono-for-powerline

# android
brew install android-platform-tools
brew install android-file-transfer


# yarn
yarn global add github:rwu823/ts-mono\#pkg/{ts-base,dev-react}
yarn global add npm-check-update
yarn global add pm2

# pnpm
curl -fsSL https://get.pnpm.io/install.sh | PNPM_VERSION=7.0.0-rc.3 sh -
