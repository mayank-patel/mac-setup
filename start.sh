# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo export PATH='/usr/local/bin:$PATH' >> ~/.bash_profile

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin

# Update homebrew recipes
brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

$PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH

// Installing Specific Applications

binaries=(
  ruby
  graphicsmagick
  webkit2png
  rename
  sshfs
  trash
  node
  mongodb
  tree
  ack
  hub
  git
)

echo "installing binaries..."
brew install ${binaries[@]}

// Cleanup everything
brew cleanup

// Install Homebrew Cask
brew install caskroom/cask/brew-cask

// Allows to install pre release version of applications.
brew tap caskroom/versions

# Apps
apps=(
  alfred
  dropbox
  google-chrome
  qlcolorcode
  firefox
  vagrant
  flash
  iterm2
  sublime-text3
  virtualbox
  atom
  mailbox
  quicklook-json
  skype
  webstorm
  sourcetree
  brackets
  filezilla
  google-chrome-canary
  google-drive
  evernote
  hipchat
  vox
  sequel-pro
  dash
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

brew tap caskroom/fonts

brew cask search /font-roboto/

# fonts
fonts=(
  font-m-plus
  font-clear-sans
  font-roboto
)

# install fonts
echo "installing fonts..."
brew cask install ${fonts[@]}

gem install compass

npm install -g grunt-cli gulp bower karma nodemon mocha meanio yo cordova pm2 forever

curl -L http://install.ohmyz.sh | sh

