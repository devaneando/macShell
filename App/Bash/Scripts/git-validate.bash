function git-validate
{
    if [[ -f "${1}" ]]; then
        ERROR=$(php -l "${1}")
        rc=$?;
        if [[ $rc != 0 ]]; then
            __error ${ERROR}
            return 1
        else
            __info "No syntax errors found."
            return 0
        fi
    fi

    __info "Checking staged files"
    __emphasize ""
    for FILE in `git diff --cached --name-only --diff-filter=ACMR HEAD | grep \\.php`
    do

        ERROR=$(php -l ${FILE})
        if [[ $? != 0 ]]; then
            __emphasize ${FILE}
            __error "${ERROR}"
        else
            __emphasize ${FILE}
            __info "${ERROR}"
        fi
        __emphasize ""
    done
}
