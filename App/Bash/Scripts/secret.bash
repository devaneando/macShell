function secret()
{
    if [[ -z ${1} ]]; then
        SIZE=32
    else
        SIZE="${1}"
    fi

    SECRET=$(LC_CTYPE=C tr -dc A-Za-z0-9 < /dev/urandom | head -c "${SIZE}" | xargs)
    __emphasize "${SECRET}"

}
