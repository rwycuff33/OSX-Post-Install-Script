ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sudo curl -L http://install.ohmyz.sh | sh
sudo defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
sudo defaults write NSGlobalDomain KeyRepeat -int 0
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
defaults write com.apple.screencapture type -string "png"
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true
defaults write com.apple.dock expose-animation-duration -float 0.1
defaults write com.apple.dock "expose-group-by-app" -bool true
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false
defaults write com.apple.Safari ProxiesInBookmarksBar "()"
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true
defaults write com.apple.terminal StringEncodings -array 4
defaults write com.apple.Terminal "Default Window Settings" -string "Pro"
defaults write com.apple.Terminal "Default Window Settings" -string "Pro"
defaults write com.apple.Terminal "Startup Window Settings" -string "Pro"
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticQuoteSubstitutionEnabled" -bool false
sudo pmset -a sms 0
sudo pmset -a standbydelay 86400
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false
defaults write NSGlobalDomain KeyRepeat -int 0
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
defaults write com.apple.iTunes AutomaticDeviceBackupsDisabled -bool true
defaults write com.apple.Safari ShowSidebarInTopSites -bool false
defaults write com.apple.Safari HomePage -string "about:blank"
defaults write com.apple.dashboard mcx-disabled -boolean YES
chflags nohidden ~/Library
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write com.apple.screencapture location -string "$HOME/Desktop"
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"
sudo systemsetup -setrestartfreeze on
sudo defaults write /Library/Preferences/.GlobalPreferences MultipleSessionEnabled -bool false
sudo defaults write /Library/Preferences/com.apple.iokit.AmbientLightSensor "Automatic Display Enabled" -bool false
brew install caskroom/cask/brew-cask
brew cask install adium bee backblaze colloquy disk-inventory-x moom boot2docker vagrant google-nik-collection lastpass-universal lastfm caffeine boot2docker vagrant
for app in "Address Book" "Calendar" "Contacts" "Dashboard" "Dock" "Finder" "Mail" "Safari" "SystemUIServer" "Terminal" "iCal" "iTunes"; do killall "$app" > /dev/null 2>&1 done
brew install wget
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install awscli