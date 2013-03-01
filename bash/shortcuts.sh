#!/bin/bash

# script bash-simplyfying
alias ls='ls -aF'
alias ll='ls -l'
alias search=grep
alias flush='dscacheutil -flushcache'
alias hack='ping'
alias ..='cd ..'
alias ...='cd ../..'
alias ip='curl --silent checkip.dyndns.org | grep --extended-regexp --only-matching "[0-9\.]+"'
alias runtor='~/.config/bash/bin/tor.sh'