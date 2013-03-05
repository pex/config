#!/bin/bash

# activate color for ls
export CLICOLOR=true
export LSCOLORS=true
LSCOLORS=exfxcxdxbxegedabagacad

# user / path colors and attributes
PROMPT_USER_COLOR='31m'
PROMPT_PATH_COLOR='0;33m'
PROMPT_TIME_COLOR='0;37m'
PROMPT_GIT_COLOR='34m'
PROMPT_GIT_DIRTY_COLOR='1m'
PROMPT_SPACER_COLOR='34m'

PROMPT_USER='\[\e[${PROMPT_USER_COLOR}\]\u'
PROMPT_TIME='\[\e[${PROMPT_TIME_COLOR}\]\t'
PROMPT_BASE='\[\e[${PROMPT_PATH_COLOR}\]\W'
PROMPT_GIT='\[\e[0m\]$(__git_ps1 " (\[\e[${PROMPT_GIT_COLOR}\]%s\[\e[0m\]\[\e[${PROMPT_GIT_DIRTY_COLOR}\]$(parse_git_dirty)\[\e[0m\])") '
PROMPT_SPACER='\[\e[${PROMPT_SPACER_COLOR}\]✗\[\e[0m\]'

export PS1="$PROMPT_USER $PROMPT_TIME $PROMPT_BASE$PROMPT_GIT$PROMPT_SPACER "
export PS2="$PROMPT_USER $PROMPT_TIME $PROMPT_BASE$PROMPT_GIT$PROMPT_SPACER "