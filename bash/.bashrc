# This file is executed when firing up interactive
# non-login shell.

# Set ssh to use given id key
eval $(ssh-agent)
ssh-add ~/.ssh/id_maczek

