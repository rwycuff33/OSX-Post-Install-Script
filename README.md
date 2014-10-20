OSX Settings, Applications and Configurations 
=============================================

This has been edited for Apple Macintosh OSX Yosemite. 

WARNING - PLEASE READ THE SCRIPT CAREFULLY BEFORE RUNNING
I have selected reasonable defaults, but you'll want to 
change things like browsers, editors, system tools to your
needs. 
I have also disabled a few operating system settings that 
I find unnecessary like smart-quotes, special character 
sticky keys and drop-sensors as I use SSDs. 
For the most part, these are commented out in order to 
make the script more safe to use.

I have also added a bunch of DevOps tools and graphics
applications that I use personaly which might not be of
any use to use, but have grouped them into sections to 
make things a bit easier to handle. Simply comment out the
entire line to not install these.


The install.sh script will install the following:

 - Moom - 
 - TextMate - http://macromates.com/download
 - Adobe Creative Cloud - http://www.adobe.com/appsmanager/
 - Alfred - http://www.alfredapp.com, https://itunes.apple.com/ca/app/alfred/id405843582?mt=12
 - iStat Menus - http://bjango.com/mac/istatmenus/
 - LastPass - 
 - LogMeIn Client - 
 - Wacom Drivers
 - Kindle - https://itunes.apple.com/ca/app/kindle/id405399194?mt=12
 
 - Slack - https://stemcell.slack.com/apps
 - Adobe Flash 
 - Microsoft SilverLight
 - DiskInventoryX
 - SourceTree - https://itunes.apple.com/ca/app/sourcetree-git-hg/id411678673?mt=12
 - Adium - 
 - Nik Software Collection - 
 - Backblaze - 
 - Balsamiq Mockups - http://balsamiq.com/download/
 - BeyondCompare - http://www.scootersoftware.com/download.php
 - Carbon Copy Cloner - https://bombich.com/download
 - RoyalTS - http://www.royalts.com/main/home/osx.aspx
 - GitHub - 
 - Google AppEngine Launcher
 - iTerm (with solarize theme)
 - JDownloader - http://jdownloader.org:8080/download/index
 - Spotify - https://www.spotify.com/ca-en/download/mac/
 - Atom - https://atom.io/download/mac
 - Sublime Text - http://www.sublimetext.com/2
 - Feedly - https://itunes.apple.com/ca/app/feedly.-read-more-know-more./id865500966?mt=12
 - Bee - https://itunes.apple.com/ca/app/bee-issue-tracking-made-native/id726099620?mt=12
 - KeePassX - 
 - The Unarchiver - 
 - Toad - 
 - UNetBootin - 
 - RescueTime - 
 - VMware Fusion - 
 - Oracle VirtualBox - 

 
Commandline Apps
================

 - AWS CLI - http://aws.amazon.com/cli/
 - Docker - https://docs.docker.com/installation/mac/
 - Vagrant - https://www.vagrantup.com/downloads.html 
 - Homebrew - http://brew.sh - ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
 - Oh My ZSH! - http://ohmyz.sh - curl -L http://install.ohmyz.sh | sh
 - OSX Developer Tools - https://developer.apple.com/downloads/index.action, then: sudo xcrun cc
 - Git - http://git-scm.com/download/mac
 - Chef DK - https://downloads.getchef.com/chef-dk/mac/
 - wget - brew install wget
 - caskroom - http://caskroom.io (the real magic here)
 
 
Settings Changed
================
 - Natural Mouse Scroll
 - Right click on trackpad
 - Keyboard Repeat Rate High
 - Animations turned off
 - Turned off fast user switching
 - Turned off clock in menubar (use iStat)
 - Set default shell to zsh

 WORK ON THESE (NOT AUTOMATIC)
 =============================
 - Removed Mail.app from dock
 - Removed Maps.app from dock
 - Removed iTunes from dock
 - Removed Facetime.app from dock
 - Removed iBooks from dock
 - Background generated here: http://matthew.wagerfield.com/flat-surface-shader/


 - Corel Painter 2015 - 
 - XCode - 
 - Capture One - 
 - VSCO presets - 
 - Adblock Plus - 
 - Pages - 
 - Amazon Workspaces Client - https://clients.amazonworkspaces.com/
 - Apple Jack - http://sourceforge.net/projects/applejack/

 - Navicat Essentials for PostgreSQL - 
 - Pomodoro - I've been using http://tomato.es/, though there's a great Pomodoro timer in the app store: https://itunes.apple.com/ca/app/pomodoro-timer-focus-on-your/id872515009?mt=12

CREDITS
=======

Many (if not all) of the OSX hacks have been taken from this Gist: https://gist.github.com/brandonb927/3195465.
Much of the app install work is being handled by Hombrew Cask: https://github.com/caskroom/homebrew-cask
The idea for the script itself could be blamed on this book from Tom Limoncelli: http://www.amazon.com/Practice-Cloud-System-Administration-Distributed/dp/032194318X/ref=la_B004J0QIVM_1_1?s=books&ie=UTF8&qid=1413847751&sr=1-1
