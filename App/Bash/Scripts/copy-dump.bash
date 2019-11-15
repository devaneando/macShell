function copy-dump()
{
    if [[ -z ${1} ]]; then
        __fatal "You must provide the name of the file to copy."
        return 1
    fi

    if [[ ! -f "${1}" ]]; then
        __fatal "The file ${1} does not exist"
        return 1
    fi

    if [[ -z ${2} ]]; then
        __fatal "You must provide the issue number of the file to copy."
        return 1
    fi

    TYPE="Dumps"
    if [[ ! -z ${3} ]]; then
        TYPE="${3}"
    fi

    FOLDER="${HOME}/Things/troubleCentric/Issues"
    ISSUE="${2}"
    if [[ "${2}" != GUEST* ]]; then
        ISSUE="GUEST-${2}"
    fi

    if [[ ! -d "${FOLDER}/${ISSUE}/${TYPE}" ]]; then
        mkdir -p "${FOLDER}/${ISSUE}/${TYPE}"
    fi
    DATE="$(date +'%Y-%m-%d_%H:%M:%S')"
    FILE_NAME=$(basename -- "${1}")
    FILE_EXTENSION="${FILE_NAME##*.}"
    FILE_NAME="${FILE_NAME%.*}"

    FILE="${FILE_NAME}_${DATE}.${FILE_EXTENSION}"

    cat "${1}" > "${FOLDER}/${ISSUE}/${TYPE}/${FILE}"
}
