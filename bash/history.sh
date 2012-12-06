#!/bin/bash

# expand history and secure save of history // erase duplicates
export HISTCONTROL=erasedups
export HISTSIZE=5000
shopt -s histappend
