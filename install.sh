#!/bin/bash

echo ""
echo "    +++++++++++++"
echo "    ++ WARNING ++"
echo "    +++++++++++++"
echo ""
echo "-- This script will overwrite the following files:"
echo "-- ~/.profile, ~/.gitconfig and ~/.gitignore"
echo "-- Make sure you've backuped them!"

read -r -p "++ Sure you want to proceed? <y/n> " response

if [[ $response == "y" || $response == "yes" ]]
then

  echo "-- Linking ~/.profile"
  ln -nsf ~/.config/profile ~/.profile

  echo "-- Linking ~/.gitconfig"
  ln -nsf ~/.config/git/config ~/.gitconfig

  echo "-- Linking ~/.gitignore"
  ln -nsf ~/.config/git/ignore ~/.gitignore

  echo "-- Refreshing source from new bash profile"
  source ~/.profile

  echo "-- Done"

else

  echo "-- Canceled"
  exit 0

fi
