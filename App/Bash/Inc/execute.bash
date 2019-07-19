#!/usr/bin/env bash
# vi:syntax=bash

function execute()
{
    FOLDER="${BASE}/App/Bash/Scripts"
    FILES="$(ls -1 ${FOLDER}/*.bash)"

    if [[ -z $1 ]]; then
        for f in $FILES; do
            basename -s .bash "${f}"
        done
        return 0
    fi

    if [[ ! -f "$FOLDER/${1}.bash" ]]; then
        for f in $FILES; do
            basename -s .bash "${f}"
        done
        return 0
    fi

    source $FOLDER/${1}.bash
    ${1} $@


}


