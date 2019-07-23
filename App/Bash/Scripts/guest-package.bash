function guest-package()
{
    DEPLOY="${HOME}/dev_environment/guestcentric-src/deployments"

    if [[ $(basename `pwd`| tr -d '[:space:]') == "guestcentric-src" ]]; then
        __fatal "Sorry but I won't create packages in guestcentric-src."
        exit 1
    fi

    if [[ $(basename `pwd`| tr -d '[:space:]') == "dev_environment" ]]; then
        __fatal "Sorry but I won't create packages in dev_environment."
        exit 1
    fi
s
    BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'| tr -d '[:space:]')
    if [[ "${BRANCH}" == "master" ]]; then
        __fatal "Sorry but I won't deploy the master branch."
        exit 1
    fi

    git checkout master
    git pull --quiet origin master
    git checkout "${BRANCH}"
    git rebase master

    if [[ $? -gt 0 ]]; then
        git rebase --abort
        __fatal "Sorry but there are conflicts that you need to resolve."
        exit 1
    fi

    FOLDER=$(basename `pwd`| tr -d '[:space:]')
    SUFIX=""

    case "${FOLDER}" in
        "cmf")
            SUFIX="_cmf"
            ;;
        "gc-global")
            SUFIX=""
            ;;
        "gc-global.01")
            SUFIX=""
            ;;
        "gc-global.630")
            SUFIX=""
            ;;
        "gc-shared")
            SUFIX="_shared"
            ;;
        "backoffice")
            SUFIX="_backoffice"
            ;;
        "lara")
            SUFIX="_lara"
            ;;
        "logger")
            SUFIX="_logger"
            ;;
        "portals")
            SUFIX="_portals"
            ;;
        "tools")
            SUFIX="_tools"
            ;;
        "worker")
            SUFIX="_worker"
            ;;
    esac

    FILES=$(git diff --name-only --staged master)
    tar -cvf "ticket_${BRANCH}${SUFIX}.tar" ${FILES}
    if [[ $? -eq 0 ]]; then
        __info "ticket_${BRANCH}${SUFIX}.tar created."
    fi
    mv -f -v "./ticket_${BRANCH}${SUFIX}.tar" "${DEPLOY}"
    if [[ $? -eq 0 ]]; then
        __info "ticket_${BRANCH}${SUFIX}.tar noved to the deploy folder."
    fi

}
