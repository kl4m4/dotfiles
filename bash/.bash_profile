# This file is executed when firing up interactive
# login shell.

# Setting PATH for Python 3.9
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:/Applications/ARM/bin:${PATH}"
export PATH
alias ls='ls -G'

# Set ssh to use given id key
eval $(ssh-agent)
ssh-add ~/.ssh/id_maczek

# Set vi-mode in prompt
set -o vi
