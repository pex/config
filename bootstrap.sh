#!/bin/sh

DIR=`dirname "$0"`

echo "-- Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
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
brew install --cask hyper
brew install --cask visual-studio-code
brew install --cask ngrok
brew install --cask transmission
brew install --cask spotify
brew install --cask font-hack
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