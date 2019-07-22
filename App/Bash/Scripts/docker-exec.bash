function docker-exec()
{
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
