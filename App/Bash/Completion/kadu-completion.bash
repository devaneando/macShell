#/usr/bin/env bash
FOLDER="${BASE}/App/Bash/Scripts"
FILES="$(ls -1 ${FOLDER}/*.bash)"
COMMANDS=""

for f in $FILES; do
    COMMAND=$(basename -s .bash "${f}")
    COMMANDS="${COMMANDS} ${COMMAND}"
done

complete -W "${COMMANDS}" kadu
