echo "Symlinking things:"

ln -s $(pwd)/.gitconfig ~/.gitconfig
#ln -s $(pwd)/.zshrc ~/.zshrc

# BINARIES
echo "Installing binaries:"

echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing chrome"
brew cask install google-chrome

echo "Installing VS Code"
brew cask install visual-studio-code

echo "Installing 1Password"
brew cask 1password

echo "Installing iTerm2"
brew cask iterm2

echo "Installing Spotify"
brew cask spotify

echo "Installing Skype"
brew cask skype

echo "Installing Handbrake"
brew cask handbrake

echo "Installing Firefox"
brew cask firefox

echo "Installing Robo 3T"
brew cask robo-3t

echo "Installing Google Drive File Stream"
brew cask google-drive-file-stream

echo "Installing DBeaver"
brew cask dbeaver-community

echo "Installing Reactotron"
brew cask reactotron

echo "Installing IINA Player"
brew cask iina

echo "Installing Postman"
brew cask postman

echo "Installing AWS CLI"
brew install awscli

echo "Installing ffmpeg"
brew install ffmpeg

echo "Installing Watchman"
brew install watchman

echo "Installing Cocoapods"
brew install cocoapods

echo "Installing Java JDK"
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8

echo "Installing FiraCode"
brew tap caskroom/fonts
brew cask install font-fira-code

echo "Making Zsh the default shell"
chsh -s $(which zsh)

echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Done!"
