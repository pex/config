#!/bin/bash

# load homebrew bins before system
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
# load NPM binaries
export PATH=/usr/local/share/npm/bin:$PATH
# load Rbenv
export RBENV_ROOT=/usr/local/opt/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
