##### HISTORY
############################################################################

# Append insted rewriting
shopt -s histappend

# Allowing a bigger history size
export HISTFILESIZE=1000000
export HISTSIZE=1000000

# Ignore duplicated lines and the ones starting with a space
export HISTCONTROL=ignorespace:ignoredups:erasedups

# Ignore these commands
export HISTIGNORE="ls:ps:history:cd:cat:ps:exit"
export HISTIGNORE="${HISTIGNORE}:..:...:....:.....:......"
export HISTIGNORE="${HISTIGNORE}:cd*:cat*:ps*:wiki*:guest*:history*:*man*:ping*:echo*:kadu*:echo*"

# Add date to history
# HISTTIMEFORMAT="%Y-%m-%d %T "

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

# Auto change to a directory if it exists
shopt -s autocd

# Replace directory names with the results of word expansion when performing filename completion.
shopt -s direxpand
