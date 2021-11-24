#!/bin/sh

DIR=`dirname "$0"`

echo "-- Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "-- Done."

echo "-- Installing Homebrew bundle"
brew bundle install
echo "-- Done."

echo "-- Cleaning up Brew"
brew cleanup
echo "-- Done."

echo "-- Installing VS-Code extensions"
code --install-extension ms-vscode.vscode-typescript-tslint-plugin
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension skyapps.fish-vscode
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension streetsidesoftware.code-spell-checker-german
code --install-extension clinyong.vscode-css-modules
code --install-extension GraphQL.vscode-graphql
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
echo "-- Done."

echo "-- Installing English/International Keyboard Layout"
wget -P ~/Library/Keyboard\ Layouts https://raw.githubusercontent.com/pex/keylayout-int-en-de/master/int-en-de.keylayout
echo "-- Done."

echo "-- Linking hyper config"
ln -hfs ~/.config/hyper/config.js ~/Library/Application\ Support/Hyper/.hyper.js
ln -hfs ~/.config/vscode/config.json ~/Library/Application\ Support/Code/User/settings.json
ln -hfs ~/.config/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
echo "-- Done."
