#!/bin/bash

export BLUE="\e[94m"
export CYAN="\e[96m"
export GREEN="\e[92m"
export MAGENTA="\e[95m"
export RED="\e[91m"
export RESET="\e[39m"
export WHITE="\e[97m"
export YELLOW="\e[93m"

if [[ "help" == "${1}" ]]; then
    printf " ${GREEN}${HELP}${RESET}\n"
    exit 0
fi
