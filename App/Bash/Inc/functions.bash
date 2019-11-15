##### Folder aliases
########## Add sudo to normally sudoed commands

# Build a docker container and image
#
# @param ${1}: The docker folder
function dockerBuild()
{
    if [[ -z "${1}" ]]; then
        echo "### I cant't build a docker if I don't know in which folder it is.\n"
        return;
    fi

    CURRENT=$(pwd)
    cd "${1}"
    sudo docker-compose build --force-rm --no-cache
    cd "${CURRENT}"
}

# Start a docker container
#
# @param ${1}: The docker folder
function dockerStart()
{
    if [[ -z "${1}" ]]; then
        echo "### I cant't start a docker if I don't know in which folder it is.\n"
        return;
    fi

    CURRENT=$(pwd)
    cd "${1}"
    sudo docker-compose up --detach --remove-orphans
    cd "${CURRENT}"
}

# Destroy a docker container and image
#
# @param ${1}: The docker folder
function dockerDestroy()
{
    if [[ -z "${1}" ]]; then
        echo "### I cant't destroy a docker if I don't know in which folder it is.\n"
        return;
    fi

    if [[ -z "${2}" ]]; then
        printf "\033[0;31mIf you want to destroy, you need to be sure. Use \033[0;33myes\033[0;31m.\033[0m\n"
        return 1
    fi

    if [[ "${2}" != "yes" ]]; then
        printf "\033[0;31mIf you want to start, you need to be sure. Use \033[0;33myes\033[0;31m.\033[0m\n"
        return 1
    fi

    CURRENT=$(pwd)
    cd "${1}"
    sudo docker-compose down --rmi all --volumes --remove-orphans
    cd "${CURRENT}"
}

# Stop a docker image
#
# @param ${1}: The docker folder
function dockerStop()
{
    if [[ -z "${1}" ]]; then
        echo "### I cant't stop a docker if I don't know in which folder it is.\n"
        return;
    fi

    CURRENT=$(pwd)
    cd "${1}"
    sudo docker-compose stop
    cd "${CURRENT}"
}

# Allow vi to automatically edit protected files
function __vi()
{
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

# Show common shortcuts
function shortcuts()
{
    echo "    CTRL+A:     Go to the start of the line"
    echo "    CTRL+E:     Go to the end of the line"
    echo "    ALT+B:      Go back one word"
    echo "    ALT+F:      Go right one word"
    echo "    CTRL+U:     Delete do the start of the line"
    echo "    CTRL+K:     Delete do the end of the line"
    echo "    CTRL+P:     Go to the previous command in the command history"
    echo "    CTRL+N:     Go to the next command in the command history"
    echo "    CMD+K:      Clears terminal"
}
