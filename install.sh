echo "Symlinking things (Git):"

ln -s $(pwd)/.gitconfig ~/.gitconfig

# BINARIES
echo "Installing binaries:"

echo "Installing Homebrew"
export NONINTERACTIVE=1
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# The commands bellow add the brew in your path
# In Mac ARM arch (M1, M2, M3...), the homebrew path changed to /opt/homebrew insted /usr/local/bin
# Ref: https://mac.install.guide/homebrew/3.html
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "Installing chrome"
brew install --cask google-chrome

echo "Installing VS Code"
brew install --cask visual-studio-code

# echo "Installing 1Password"
# brew install --cask 1password

echo "Installing iTerm2"
brew install --cask iterm2

echo "Installing Spotify"
brew install --cask spotify

echo "Installing Slack"
brew install --cask slack

echo "Installing Skype"
brew install --cask skype

echo "Installing Microsoft Teams"
brew install --cask microsoft-teams

echo "Installing Aviatrix VPN"
brew install --cask aviatrix-vpn-client

echo "Installing Handbrake"
brew install --cask handbrake

echo "Installing Firefox"
brew install --cask firefox

# echo "Installing Robo 3T"
# brew install --cask robo-3t

echo "Installing Google Drive"
brew install --cask google-drive

echo "Installing DBeaver"
brew install --cask dbeaver-community

echo "Installing Reactotron"
brew install --cask reactotron

echo "Installing Flipper"
brew install --cask flipper

echo "Installing IINA Player"
brew install --cask iina

echo "Installing Postman"
brew install --cask postman

echo "Installing AWS CLI"
brew install awscli

echo "Installing Watchman"
brew install watchman

echo "Installing Cocoapods"
brew install cocoapods

echo "Installing Java with OpenJDK"
brew tap homebrew/cask-versions
brew install --cask zulu17

echo "Installing FiraCode"
brew tap homebrew/cask-fonts
brew install --cask font-fira-code

echo "Installing Docker"
brew install --cask docker

echo "Install Android Studio"
brew install --cask android-studio

echo "Installing Transmission"
brew install --cask transmission

echo "Installing Notion"
brew install --cask notion

echo "Making Zsh the default shell"
chsh -s $(which zsh)

echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# echo "Symlinking things (zshrc):"
# ln -s $(pwd)/.zshrc ~/.zshrc

echo "Installing NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

echo "Done!"

echo "--- Post install ---"
echo "Configure and finish the JDK (Java) installation..."
# Ref: https://reactnative.dev/docs/environment-setup?os=macos&platform=android
# Get path to where cask was installed to double-click installer
brew info --cask zulu17
