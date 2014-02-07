# homebrew
set PATH /usr/local/bin $PATH
set PATH /usr/local/sbin $PATH

# npm
set PATH /usr/local/share/npm/bin $PATH

# rbenv
set RBENV_ROOT /usr/local/opt/rbenv
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH

rbenv rehash >/dev/null ^&1
