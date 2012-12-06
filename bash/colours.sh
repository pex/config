#!/bin/bash

# activate color for ls
export CLICOLOR=true
export LSCOLORS=true
LSCOLORS=exfxcxdxbxegedabagacad

# user / path colors and attributes
PROMPT_USER_COLOR='31m'
PROMPT_PATH_COLOR='1;30m'
PROMPT_TIME_COLOR='1;36m'
PROMPT_GIT_COLOR='34m'
PROMPT_GIT_DIRTY_COLOR='1m'
PROMPT_SPACER_COLOR='34m'

# removed path: \[\e[${PROMPT_PATH_COLOR}\]\w

export PS1='\[\e[${PROMPT_USER_COLOR}\]\u \[\e[${PROMPT_TIME_COLOR}\]\t\[\e[0m\]$(__git_ps1 " (\[\e[${PROMPT_GIT_COLOR}\]%s\[\e[0m\]\[\e[${PROMPT_GIT_DIRTY_COLOR}\]$(parse_git_dirty)\[\e[0m\])") \[\e[${PROMPT_SPACER_COLOR}\]➟\[\e[0m\]  '
export PS2='\[\e[${PROMPT_USER_COLOR}\]\u \[\e[${PROMPT_TIME_COLOR}\]\t\[\e[0m\]$(__git_ps2 " (\[\e[${PROMPT_GIT_COLOR}\]%s\[\e[0m\]\[\e[${PROMPT_GIT_DIRTY_COLOR}\]$(parse_git_dirty)\[\e[0m\])") \[\e[${PROMPT_SPACER_COLOR}\]➟\[\e[0m\]  '
