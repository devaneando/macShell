##### Folder aliases
########## Add sudo to normally sudoed commands
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'

alias grep='grep --no-messages --extended-regexp --color'
alias la='ls -AFho'
alias ps='ps -Afr'

# Allows vi to automatically edit protected files
function __vi() {
    # If the file in question does not exist
    if [ ! -e "${1}" ]; then
        if [ ! -w "$(dirname \"${1}\")" ]; then
            sudo --preserve-env env vi "${1}"
            return 0
        else
            env vi "${1}"
            return 0
        fi
    fi

    # If the file is a dir, exits
    if [ -d "${1}" ]; then
        return 0
    fi

    # If the file exists, make sure you have permissions to write it
    if [ ! -w "{1}" ]; then
        sudo --preserve-env env vi "${1}"
    else
        env vi "${1}"
    fi
}
alias vi="__vi"

function shortcuts() {
    echo "    CTRL+A:     Go to the start of the line"
    echo "    CTRL+E:     Go to the end of the line"
    echo "    ALT+B:      Go back one word"
    echo "    ALT+F:      Go right one word"
    echo "    CTRL+U:     Delete do the start of the line"
    echo "    CTRL+K:     Delete do the end of the line"
    echo "    CTRL+P:     Go to the previous command in the command history"
    echo "    CTRL+N:     Go to the next command in the command history"
}
