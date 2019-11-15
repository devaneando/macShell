function openMacApp()
{
    if [[ -z "${1}" ]]; then
        echo "I need the application name \n"
    fi

    if [[ -z "${2}" ]]; then
        open -a "${1}"
    else
        open "${2}" -a "${1}"
    fi
}

# Expose a mac application
function calc()
{
    openMacApp "Calculator" ${1}
}

# Expose a mac application
function chrome()
{
    openMacApp "Google Chrome" ${1}
}

# Expose a mac application
function firefox()
{
    openMacApp "Firefox" ${1}
}

# Expose a mac application
function macDown()
{
    openMacApp "MacDown" ${1}
}
