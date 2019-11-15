##### Folder aliases
########## Add sudo to normally sudoed commands
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'

alias find="sudo find"
alias findLogs='sudo find . -mtime -12h -type f -name "*.log" -print'
alias grep='grep --recursive --no-messages --extended-regexp --color'
alias gti="git"
alias guestDestroy="dockerDestroy ${DEVELOPEMENT_HOME}/Guest/dev_environment"
alias guestStart="dockerStart ${DEVELOPEMENT_HOME}/Guest/dev_environment"
alias guestStop="dockerStop ${DEVELOPEMENT_HOME}/Guest/dev_environment"
alias kadu="kadu"
alias la='ls -AFhot'
alias mysqldump="mysqldump --column-statistics=0"
alias ping="ping -c4"
alias ps='ps -Afr'
alias vi="__vi"
alias wikiDestroy="dockerDestroy ${DEVELOPEMENT_HOME}/Wikitten/docker"
alias wikiStart="dockerStart ${DEVELOPEMENT_HOME}/Wikitten/docker"
alias wikiStop="dockerStop ${DEVELOPEMENT_HOME}/Wikitten/docker"


