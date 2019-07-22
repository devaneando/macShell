function docker-exec()
{
    IFS=' '
    IMAGE=$(docker ps | grep "${2}")
    read -a strarr <<< $IMAGE

    if [[ -z "${3}" ]]; then
        docker exec -it "${strarr[0]}" bash
    else
        shift
        shift
        docker exec -it "${strarr[0]}" "$@"
    fi
}
