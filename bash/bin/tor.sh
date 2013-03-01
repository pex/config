#!/bin/bash

INTERFACE=Wi-Fi

if command -v tor >/dev/null; then
  # Thanks [Leonid](http://leonid.shevtsov.me/en/an-easy-way-to-use-tor-on-os-x)
  networksetup -setsocksfirewallproxy $INTERFACE 127.0.0.1 9050 off
  networksetup -setsocksfirewallproxystate $INTERFACE on
  tor
  networksetup -setsocksfirewallproxystate $INTERFACE off
else
  echo "---- Tor Load Error"
  echo "---- Tor is not installed! Run \`$ brew install tor\`"
  echo "---- "
  exit 1
fi