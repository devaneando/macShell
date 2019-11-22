#!/bin/bash

function phpCheck()
{
    if [[ ! -z "${1}" ]]; then
        if [[ "${1}" != *.php ]]; then
            printf "\n\033[0;31m${1} is not a PHP file!!!\033[0m\n\n"
            return 1
        fi

        printf "\n\033[0;96mPHP -l ${1}\033[0m\n\n"
        php -l "${1}"
        printf "\n\033[0;96mPHPMD ${1}\033[0m\n\n"
        phpmd "${1}" text "${HOME}/Shell/Standards/PhpMd/phpms.guestcentric.xml"
        printf "\n"
        printf "\n\033[0;96mPHAN ${1}\033[0m\n\n"
        phan --color --config-file "${HOME}/Shell/Standards/Phan/config.php" "${1}"
        printf "\n"
        return 0
    fi

    RESULT=`git symbolic-ref --short HEAD 2>&1`
    if [ $? -ne 0 ]; then
        printf "\n\033[0;31mThis is not a GIT repository!!!\033[0m\n\n"
        return 1
    fi

    for file in `git diff master --name-only`
    do
        if [[ "${file}" != *.php ]]; then
            continue
        fi
        printf "\n\033[0;96mPHP -l ${1}\033[0m\n\n"
        php -l "${file}"
        printf "\n"
        printf "\n\033[0;96mPHPMD -l ${1}\033[0m\n\n"
        phpmd "${file}" text "${HOME}/Shell/Standards/PhpMd/phpms.guestcentric.xml"
        printf "\n"
        printf "\n\033[0;96mPHAN -l ${1}\033[0m\n\n"
        phan --color --config-file "${HOME}/Shell/Standards/Phan/config.php" "${file}"
        printf "\n"
    done
}
