# paths
source ~/.config/fish/paths.fish

# shortcuts
source ~/.config/common/shortcuts

# custom stuff
set -l custom_source "~/.profile_custom"
if test -e "$custom_source"
  source "$custom_source"
end
