function git-keep()
{

    if [[ $(basename `pwd`| tr -d '[:space:]') == "guestcentric-src" ]]; then
        __fatal "Sorry but I won't create packages in guestcentric-src."
        exit 1
    fi

    if [[ "--all" = ${1} ]]; then
        find . -type d -not -path "./.git/*" -exec printf ${CL_GREEN}"touching "{}"/.gitkeep"${CL_NORMAL}"\n" \; -exec touch {}/.gitkeep \;
        return 0
    fi

    if [[ ! -d ${1} ]]; then
        __fatal "'${1}' is not a valid folder."
        exit 1
    fi

    __info "touching ${1}/.gitkeep"
    touch "${1}/.gitkeep"
}
