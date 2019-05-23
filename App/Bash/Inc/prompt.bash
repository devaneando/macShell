#!/bin/bash
#
# DESCRIPTION:
#
#   Set the bash prompt according to:
#    * the active virtualenv
#    * the branch/status of the current git repository
#    * the return value of the previous command
#    * the fact you just came from Windows and are used to having newlines in
#      your prompts.
#
# USAGE:
#
#   1. Save this file as ~/.bash_prompt
#   2. Add the following line to the end of your ~/.bashrc or ~/.bash_profile:
#        . ~/.bash_prompt
#
# LINEAGE:
#
#   Based on work by woods
#
#   https://gist.github.com/31967

# The various escape codes that we can use to color our prompt.
        RED="\[\033[0;31m\]"
     YELLOW="\[\033[1;33m\]"
      GREEN="\[\033[0;32m\]"
       BLUE="\[\033[1;34m\]"
  TET_RED="\[\033[1;31m\]"
LIGHT_GREEN="\[\033[1;32m\]"
      WHITE="\[\033[1;37m\]"
 LIGHT_GRAY="\[\033[0;37m\]"
 COLOR_NONE="\[\e[0m\]"

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}

# Return the prompt symbol to use, colorized based on the return value of the
# previous command.
function set_prompt_symbol () {
  if test $1 -eq 0 ; then
      PROMPT_SYMBOL="${LIGHT_GREEN}😎 ${COLOR_NONE}"
  else
      PROMPT_SYMBOL="${LIGHT_RED}😡 ${COLOR_NONE}"
  fi
}

# Set the full bash prompt.
function set_bash_prompt () {
  # Set the PROMPT_SYMBOL variable. We do this first so we don't lose the
  # return value of the last command.
  set_prompt_symbol $?

   history -a
   history -c
   history -r

  # Set the BRANCH variable.
  BRANCH="$(parse_git_branch)"

  # Set the bash prompt variable.
  PS1="${PYTHON_VIRTUALENV}${GREEN}\A${LIGHT_GREEN}${BRANCH}${WHITE}@${BLUE}\W${COLOR_NONE} ${PROMPT_SYMBOL} "
}

# Tell bash to execute this function just before displaying its prompt.
PROMPT_COMMAND=set_bash_prompt;
