## SET REASONABLE OSX DEFAULTS
sudo defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

## TURN OFF SCREENSAVER PASSWORD DELAY
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

## SHOW ALL RESOLUTIONS
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

## TURN OFF DISK IMAGE VERIFICATION - POSSIBLE SECURITY PROBLEM - UNCOMMENT IF YOU WANT THIS
#defaults write com.apple.frameworks.diskimages skip-verify -bool true
#defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
#defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
#defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

## SET EXPOSE ANIMATION TO BE FASTEST AND GROUP BY APP
defaults write com.apple.dock expose-animation-duration -float 0.1
defaults write com.apple.dock "expose-group-by-app" -bool true

## TURN OF MATCHES ON PREFIX-ONLY IN SAFARI
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false
## REMOVE UN-NEEDED LINKS IN SAFARI
defaults write com.apple.Safari ProxiesInBookmarksBar "()"

## TURN ON BACKSPACE KEY TO GO BACK - COMMENTED OUT WITH PEOPLE WHO HATE THIS
#defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true

## SET TERMINAL TO HOMEBREW THEME, OPTIONS ARE "Pro", "Homebrew", "Man Page", "Novel", "Ocean", "Red Sands", "Silver Aerogel", "Solid Colors"
defaults write com.apple.terminal StringEncodings -array 4
defaults write com.apple.Terminal "Default Window Settings" -string "Homebrew"
defaults write com.apple.Terminal "Default Window Settings" -string "Homebrew"
defaults write com.apple.Terminal "Startup Window Settings" -string "Homebrew"

## TURN OFF SMART-QUOTES AS IT INTERFERES WITH CODE SNIPPETS
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticQuoteSubstitutionEnabled" -bool false

## TURN OFF SUDDEN MOTION SENSOR FOR SSD, SET STAND-BY DELAY TO 1 DAY
## COMMENTED OUT, UNCOMMENT TO TAKE EFFECT
#sudo pmset -a sms 0
#sudo pmset -a standbydelay 86400


## SET SUPER FAST KEY REPEAT
defaults write NSGlobalDomain KeyRepeat -int 0

## TURN OFF ITUNES DEVICE BACKUP
defaults write com.apple.iTunes AutomaticDeviceBackupsDisabled -bool true

## TURN OFF SIDEBAR ON SAFARI TOPSITES
defaults write com.apple.Safari ShowSidebarInTopSites -bool false

## SET SAFARI HOMEPAGE TO BLANK
defaults write com.apple.Safari HomePage -string "about:blank"

## TURN OFF DASHBOARD
defaults write com.apple.dashboard mcx-disabled -boolean YES

## UNHIDE YOUR USER LIBRARY
chflags nohidden ~/Library
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

## TURN OFF ANIMATIONS
defaults write com.apple.finder DisableAllAnimations -bool true

## SET REASONABLE SCREEN CAPTURE DEFAULTS
defaults write com.apple.screencapture location -string "$HOME/Desktop"
defaults write com.apple.screencapture type -string "png"

## SET FINDER TO DEFAULT TO $HOME
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

## RESTART SYSTEM WHEN FROZEN/HUNG
sudo systemsetup -setrestartfreeze on

## TURN OFF FAST USER SWITCHING
sudo defaults write /Library/Preferences/.GlobalPreferences MultipleSessionEnabled -bool false

## TURN OFF AMBIENT DISPLAY SENSOR
sudo defaults write /Library/Preferences/com.apple.iokit.AmbientLightSensor "Automatic Display Enabled" -bool false

## INSTALL HOMEBREW AND COMMANDLINE TOOLS MISSING IN OSX
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install wget watch gnu-sed coreutils

## INSTALL OH MY ZSH AND SET ZSH AS DEFAULT SHELL
sudo curl -L http://install.ohmyz.sh | sh
chsh -s /bin/zsh

## INSTALL CASKROOM AND ALL APPLICATIONS
brew install caskroom/cask/brew-cask
 
## CODING TOOLS
brew cask install bee iterm2 sourcetree github chefdk

## PICK AN EDITOR
brew cask install sublime-text
#brew cask install textmate
#brew cask install atom
#brew cask install textwrangler 

## SYSTEM UTILITIES 
brew cask install disk-inventory-x moom unetbootin istat-menus alfred caffeine keepassx rescuetime the-unarchiver logmein-client royal-tsx jdownloader lastfm 

## VIRTUALIZATION / CONTAINERS
brew cask install boot2docker vagrant vmware-fusion virtualbox

## GRAPHICS APPS
## Set "wacom-tablet" to "wacom-bamboo-tablet" for bamboo users
brew cask install google-nik-collection wacom-tablet adobe-creative-cloud 

## BROWSERS - UNCOMMENT YOUR FAVOURITE AND/OR INSTALL THEM ALL #################################################
## INSTALL CHROME, REMOTE DESKTOP, CHROMECAST AND TURN OFF ANNOYING SWIPE LEFT RIGHT BEHAVIOUR
brew cask install chromecast chrome-remote-desktop-host google-chrome && defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false

## INSTALL FIREFOX
#brew cask install firefox

## INSTALL OPERA
#brew cask install opera
###############################################################################################################

## INSTALL DB TOOLS
brew cask install navicat-for-postgresql toad
## INSTANT MESSAGING
brew cask install adium colloquy slack

## BACKUP APPS
brew cask install backblaze carbon-copy-cloner

## BROWSER PLUGINS
brew cask install lastpass-universal silverlight flash-player

## SPOTIFY
brew cask install spotify spotify-menubar spotify-notifications

## CONFIGURE ITERM TO NOT PROMPT ON QUIT
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

## INSTALL AWS CLI
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install awscli

## WARN USER
sleep 30
echo About to close many apps - shutdown the following, or have them cycled for you: 
echo Address Book, Calendar, Contacts, Dashboard, Dock, Finder, Mail, Safari, SystemUIServer, Terminal, iCal, iTunes
## CLOSE ALL APPS THAT NEED TO BE REFRESHED FOR SETTINGS TO TAKE
for app in "Address Book" "Calendar" "Contacts" "Dashboard" "Dock" "Finder" "Mail" "Safari" "SystemUIServer" "Terminal" "iCal" "iTunes"; do killall "$app" > /dev/null 2>&1 done