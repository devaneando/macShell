export CL_BLACK=$(tput setaf 0)
export CL_BLINK=$(tput blink)
export CL_BLUE=$(tput setaf 4)
export CL_BRIGHT=$(tput bold)
export CL_CYAN=$(tput setaf 6)
export CL_GREEN=$(tput setaf 2)
export CL_LIME_YELLOW=$(tput setaf 190)
export CL_MAGENTA=$(tput setaf 5)
export CL_NORMAL=$(tput sgr0)
export CL_POWDER_BLUE=$(tput setaf 153)
export CL_RED=$(tput setaf 1)
export CL_REVERSE=$(tput smso)
export CL_UNDERLINE=$(tput smul)
export CL_WHITE=$(tput setaf 7)
export CL_YELLOW=$(tput setaf 3)

function kadu
{
    if [[ ! -f "$FOLDER/${1}.bash" ]]; then
        for f in $FILES; do
            basename -s .bash "${f}"
        done
        return 0
    fi

    source $FOLDER/${1}.bash
    ${1} $@


}
