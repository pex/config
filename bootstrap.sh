#!/bin/sh

DIR=`dirname "$0"`

echo "-- Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "-- Done."

echo "-- Installing Homebrew Formulas"

brew install git node fish yarn tig wget

echo "-- Done."

echo "-- Installing Fisher"

curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fisher

echo "-- Done."

echo "-- Installing Cask Formulas"
echo "-- (This might take some time...)"

brew cask install hyper visual-studio-code ngrok transmission spotify font-hack

echo "-- Done."

echo "-- Installing English/International Keyboard Layout"
wget -P ~/Library/Keyboard\ Layouts https://raw.githubusercontent.com/pex/keylayout-int-en-de/master/int-en-de.keylayout
echo "-- Done."

echo "-- Linking hyper config"
ln -sf ~/.config/hyper/config.js ~/.hyper.js
ln -sf ~/.config/vscode/config.json ~/Library/Application\ Support/Code/User/settings.json
echo "-- Done."
