#!/usr/bin/env bash

print_header "macOS Settings"

# Requesting passowrd
sudo -v

#==============================
# Finder
#==============================
print_title "Finder"

execute "defaults write com.apple.finder AppleShowAllFiles -bool true" \
            "Show hidden files by default"

execute "defaults write NSGlobalDomain AppleShowAllExtensions -bool true" \
            "Show file extensions in Finder"

execute "defaults write com.apple.finder ShowStatusBar -bool true" \
            "Show status bar"

execute "defaults write com.apple.finder ShowPathbar -bool true" \
            "Show path bar"

execute "defaults write com.apple.finder ShowStatusBar -bool true" \
            "Show status bar"

execute "defaults write com.apple.finder QLEnableTextSelection -bool true" \
            "Allow text selection in Quick Look"

execute "defaults write com.apple.finder _FXSortFoldersFirst -bool true" \
            "Keep folders on top when sorting by name"

execute 'defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"' \
            "When performing a search, search the current folder by default"

execute "defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false" \
            "Disable the warning when changing a file extension"

# Four-letter codes for the other view modes: `icnv`, `Nlsv`, `clmv`, `glyv`
execute 'defaults write com.apple.finder FXPreferredViewStyle -string "clmv"' \
            "Use columns view in all Finder windows by default"

execute "defaults write com.apple.finder ShowRecentTags -bool false" \
            "Hide recent tags"

execute 'defaults write com.apple.finder NewWindowTarget -string "PfHm" && \
        defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"' \
            "Set Home folder as the default location for new Finder windows"

execute "defaults write com.apple.finder QuitMenuItem -bool true" \
            "Allow quitting via ⌘ + Q; doing so will also hide desktop icons"

#==============================
# Dock
#==============================
print_title "Dock"

execute "defaults write com.apple.dock autohide -bool true" \
            "Autohide dock"

execute "defaults write com.apple.dock tilesize -int 54" \
            "Set the icon size of Dock items to 54 pixels"

execute "defaults write com.apple.dock magnification -bool true && \
        defaults write com.apple.dock largesize -int 72" \
            "Enable magnification"

execute "defaults write com.apple.dock minimize-to-application -bool true" \
            "Minimize windows into their application’s icon"

execute "defaults write com.apple.dock show-recents -bool false" \
    "Do not show recent applications in Dock"

#==============================
# Keyboard
#==============================
print_title "Keyboard"

execute "defaults delete com.apple.HIToolbox AppleEnabledInputSources" \
            "Delete the default layouts"

execute "defaults write com.apple.HIToolbox AppleEnabledInputSources -array-add '<dict><key>InputSourceKind</key><string>Keyboard Layout</string><key>KeyboardLayout ID</key><integer>0</integer><key>KeyboardLayout Name</key><string>U.S.</string></dict>'" \
            "Add U.S. keyboard layout"

execute "defaults write com.apple.HIToolbox AppleEnabledInputSources -array-add '<dict><key>InputSourceKind</key><string>Keyboard Layout</string><key>KeyboardLayout ID</key><integer>19458</integer><key>KeyboardLayout Name</key><string>RussianWin</string></dict>'" \
            "Add RussianWin keyboard layout"

execute "defaults write -g 'InitialKeyRepeat_Level_Saved' -int 10" \
    "Set delay until repeat"

execute "defaults write -g KeyRepeat -int 1" \
    "Set the key repeat rate to fast"

execute "defaults write NSGlobalDomain AppleKeyboardUIMode -int 3" \
    "Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)"

#==============================
# Trackpad
#==============================
print_title "Trackpad"

execute "defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true && \
         defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1 && \
         defaults write -g com.apple.mouse.tapBehavior -int 1 && \
         defaults -currentHost write -g com.apple.mouse.tapBehavior -int 1" \
    "Enable 'Tap to click'"

execute "defaults write com.apple.dock showMissionControlGestureEnabled -bool true && \
        defaults write com.apple.dock showAppExposeGestureEnabled -bool true && \
        defaults write com.apple.dock showDesktopGestureEnabled -bool true && \
        defaults write com.apple.dock showLaunchpadGestureEnabled -bool true" \
        "Enable extra multifinger gestures (such as three finger swipe down = app expose)"

execute "defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true && \
        defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144" \
            "Use scroll gesture with the Ctrl (^) modifier key to zoom"

execute "defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true" \
        "Follow the keyboard focus while zoomed in"

#==============================
# Different
#==============================
print_title "Different"

execute 'defaults write NSGlobalDomain AppleLanguages -array "en" "en-UA" "ru" "ru-UA"' \
        "Languages"

execute 'defaults write NSGlobalDomain AppleLocale -string "en_US"' \
        "Locale"

execute "defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false" \
            "Disable auto-correct"

execute "defaults write com.apple.screensaver askForPassword -int 1 && \
        defaults write com.apple.screensaver askForPasswordDelay -int 5" \
            "Require password 5 seconds after sleep or screen saver begins"

execute "defaults write com.apple.screencapture show-thumbnail -bool FALSE" \
            "Disable Floating Screenshot Thumbnail"


#==============================
# Transmission
#==============================
print_title "Transmission"

execute "defaults write org.m0k.transmission DeleteOriginalTorrent -bool true" \
    "Delete the original torrent files"

execute "defaults write org.m0k.transmission DownloadAsk -bool false" \
    "Don’t prompt for confirmation before downloading"

execute "defaults write org.m0k.transmission CheckRemoveDownloading -bool true" \
    "Don’t prompt for confirmation before removing non-downloading active transfers"

execute "defaults write org.m0k.transmission DownloadChoice -string 'Constant' && \
         defaults write org.m0k.transmission DownloadFolder -string '$HOME/Downloads/torrents'" \
    "Use '~/Downloads/torrents' to store complete downloads"

execute "defaults write org.m0k.transmission WarningDonate -bool false" \
    "Hide the donate message"

execute "defaults write org.m0k.transmission WarningLegal -bool false" \
    "Hide the legal disclaimer"

execute "defaults write org.m0k.transmission RandomPort -bool true" \
    "Randomize port on launch"

