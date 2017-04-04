#!/bin/bash

DIR=`dirname "$0"`

echo "-- Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "-- Done."

echo "-- Installing Homebrew Formulas"

brew tap caskroom/fonts
brew tap fisherman/tap
brew install git ruby node fish fisherman heroku yarn tig wget

echo "-- Done."

echo "-- Installing Cask Formulas"
echo "-- (This might take some time...)"

brew cask install google-chrome steam spotify atom ngrok transmission virtualbox font-source-code-pro-for-powerline iterm2

echo "-- Done."

echo "-- Installing Atom Packages"

apm install language-babel sort-lines editorconfig

echo "-- Done."

echo ""
echo "    +++++++++++++"
echo "    ++ WARNING ++"
echo "    +++++++++++++"
echo ""
echo "-- This script will overwrite the following files:"
echo "-- ~/.gitconfig and ~/.gitignore"
echo "-- with files located in $DIR/git"
echo "-- Make sure you've backuped them!"

read -r -p "++ Sure you want to proceed? <y/n> " response

if [[ $response == "y" || $response == "yes" ]]
then

  echo "-- Linking ~/.gitconfig"
  ln -nsf $DIR/git/config ~/.gitconfig

  echo "-- Linking ~/.gitignore"
  ln -nsf $DIR/git/ignore ~/.gitignore

  echo "-- Done."

else

  echo "-- Canceled."
  exit 0

fi

echo "-- Installing English/International Keyboard Layout"
wget -O ~/Library/Keyboard\ Layouts https://raw.githubusercontent.com/pex/keylayout-int-en-de/master/int-en-de.keylayout
echo "-- Done."

echo ""
echo "    ++++++++++++++++"
echo "    ++ What next? ++"
echo "    ++++++++++++++++"
echo ""

echo "-- 1. Set iTerm2 config syn with ./iterm2/com.googlecode.iterm2.plist"
echo ""
echo "-- Have phun.."
