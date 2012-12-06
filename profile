# git extensions
source ~/.config/bash/extensions/git_config.sh

# paths
source ~/.config/bash/paths.sh

# colours
source ~/.config/bash/colours.sh

# shortcuts
source ~/.config/bash/shortcuts.sh

# history
source ~/.config/bash/history.sh

# custom stuff
custom_source="~/bash_custom.sh"
if [ -e "$custom_source" ]
then
  source "$custom_source"
fi
