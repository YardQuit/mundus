#!/bin/bash

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# environment
source ~/.config/terminal/environment

# dynamic aliases
source ~/.config/terminal/dynamic_alias

# tput color codes
source ~/.config/terminal/color_codes_tput

# bash-completion
source /etc/profile.d/bash_completion.sh

# autoruns
source ~/.config/terminal/autoruns

# fzf key-bind (ctrl+k, alt+c, ctrl+r)
# ctrl+k, To select files, similar to autocompletion (fzf ** TAB)
# alt+c, To quickly switch into a selected subdirectory
# ctrl+r, For smart searching your command history
source /usr/share/fzf/shell/key-bindings.bash
