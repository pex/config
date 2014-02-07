#!/bin/bash

# paths
source ~/.config/common/paths.sh

# shortcuts
source ~/.config/common/shortcuts.sh

# history
source ~/.config/common/history.sh

# custom stuff
custom_source="~/.profile_custom"
if [ -e "$custom_source" ]
then
  source "$custom_source"
fi
