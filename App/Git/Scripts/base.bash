BLUE="\e[94m"
CYAN="\e[96m"
GREEN="\e[92m"
MAGENTA="\e[95m"
RED="\e[91m"
RESET="\e[39m"
WHITE="\e[97m"
YELLOW="\e[92m"
YELLOW="\e[93m"

if [[ "help" == "${1}" ]]; then
    printf "    ${GREEN}${HELP}${RESET}\n"
    exit 0
fi
