function secret()
{
    if [[ -z ${1} ]]; then
        SIZE=32
    else
        SIZE="${1}"
    fi

    LC_CTYPE=C tr -dc A-Za-z0-9_\!\@\#\$\%\^\&\*\(\)-+= < /dev/urandom | head -c "${SIZE}" | xargs

}
