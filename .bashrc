export PAGER=less
export EDITOR=emacs

# Lets have ls print in colour
export CLICOLOR=1

# Don't log off on Ctrl-D
set -o ignoreeof

# Don't want duplicate lines in the history file
export HISTCONTROL=ignoredups

# Let's have lots of space in the history file
export HISTFILESIZE=50000
export HISTSIZE=50000
