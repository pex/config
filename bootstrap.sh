#!/bin/sh

DIR=`dirname "$0"`

echo "-- Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "-- Done."

echo "-- Installing Homebrew Formulas"
brew install git
brew install node
brew install fish
brew install yarn
brew install tig
brew install gnupg
brew install wget --with-iri
echo "-- Done."

echo "-- Installing Cask Formulas"
echo "-- (This might take some time...)"
brew cask install hyper
brew cask install visual-studio-code
brew cask install ngrok
brew cask install transmission
brew cask install spotify
brew cask install font-hack
echo "-- Done."

echo "-- Cleaning up Brew"
brew cleanup
echo "-- Done."

echo "-- Installing English/International Keyboard Layout"
wget -P ~/Library/Keyboard\ Layouts https://raw.githubusercontent.com/pex/keylayout-int-en-de/master/int-en-de.keylayout
echo "-- Done."

echo "-- Linking hyper config"
ln -hfs ~/.config/hyper/config.js ~/.hyper.js
ln -hfs ~/.config/vscode/config.json ~/Library/Application\ Support/Code/User/settings.json
echo "-- Done."