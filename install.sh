echo "Symlinking things:"

ln -s $(pwd)/.gitconfig ~/.gitconfig
#ln -s $(pwd)/.zshrc ~/.zshrc

# BINARIES
echo "Installing binaries:"

echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing chrome"
brew install --cask google-chrome

echo "Installing VS Code"
brew install --cask visual-studio-code

echo "Installing 1Password"
brew install --cask 1password

echo "Installing iTerm2"
brew install --cask iterm2

echo "Installing Spotify"
brew install --cask spotify

echo "Installing Slack"
brew install --cask slack

echo "Installing Skype"
brew install --cask skype

echo "Installing Handbrake"
brew install --cask handbrake

echo "Installing Firefox"
brew install --cask firefox

echo "Installing Robo 3T"
brew install --cask robo-3t

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
brew install --cask zulu11

echo "Installing FiraCode"
brew tap homebrew/cask-fonts
brew install --cask font-fira-code

echo "Installing Docker"
brew install --cask docker

echo "Installing Transmission"
brew install --cask transmission

echo "Installing Notion"
brew install --cask notion

echo "Making Zsh the default shell"
chsh -s $(which zsh)

echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Done!"
