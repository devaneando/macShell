function docker-exec()
{
    if [[ -z ${1} ]]; then
        __fatal "You must provide the image name (only part of the name is enough)."
        return 1
    fi

    IFS=' '
    IMAGE=$(docker ps | grep "${1}")
    read -a strarr <<< $IMAGE

    if [[ -z "${2}" ]]; then
        docker exec -it "${strarr[0]}" bash
    else
        shift
        docker exec -it "${strarr[0]}" "$@"
    fi
}
