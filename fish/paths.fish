# homebrew
set -gx PATH /usr/local/bin $PATH
set -gx PATH /usr/local/sbin $PATH

# npm
set -gx PATH /usr/local/share/npm/bin $PATH

# rbenv
set -gx RBENV_ROOT /usr/local/opt/rbenv
set -gx PATH $RBENV_ROOT/bin $PATH
set -gx PATH $RBENV_ROOT/shims $PATH

rbenv rehash >/dev/null ^&1
