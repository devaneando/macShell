##### HISTORY
############################################################################

# Append insted rewriting
shopt -s histappend

# Allowing a bigger history size
HISTFILESIZE=1000000
HISTSIZE=1000000

# Ignore duplicated lines and the ones starting with a space
HISTCONTROL=ignoreboth

# Ignore these commands
HISTIGNORE='ls:la:bg:fg:cd:reset:history'

# Change multilined commands into a single one
shopt -s cmdhist

##### User Experience
############################################################################

# check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, minor errors in the spelling of a directory component in a cd command will be corrected.
shopt -s cdspell

# If set, Bash includes filenames beginning with a ‘.’ in the results of filename expansion.
shopt -s dotglob
