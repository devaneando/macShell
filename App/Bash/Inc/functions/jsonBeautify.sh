#!/bin/bash

function jsonBeautify()
{
    if [[ -z "${1}" ]]; then
        printf "\n\033[0;31mWhat file should I beautify???\033[0m\n\n"
        return 1
    fi

    if [[ ! -z "${1}" ]]; then
        if [[ "${1}" != *.json ]]; then
            printf "\n\033[0;31m${1} is not a JSON file!!!\033[0m\n\n"
            return 1
        fi

        if [[ ! -f "${1}" ]]; then
            printf "\n\033[0;31m${1} does not exist!!!\033[0m\n\n"
            return 1
        fi

        cp  "${1}" "${TMPDIR}kaduPretty.json"
        python -m json.tool "${TMPDIR}kaduPretty.json"
        cat "${TMPDIR}kaduPretty.json" > "${1}"
    fi
}
