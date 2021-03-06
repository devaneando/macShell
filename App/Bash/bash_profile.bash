# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

export BASE="${HOME}/Shell"
export CLICOLOR=1
export CLICOLOR_FORCE=1
export DEVELOPEMENT_HOME="${HOME}/Development"

touch "${HOME}/.hushlogin"

if [[ -f "${BASE}/App/Bash/Inc/settings.bash" ]]; then
    source "${BASE}/App/Bash/Inc/settings.bash"
fi

if [[ -f "${BASE}/App/Bash/Inc/aliases.bash" ]]; then
    source "${BASE}/App/Bash/Inc/aliases.bash"
fi

if [[ -f "${BASE}/App/Bash/Inc/functions.bash" ]]; then
    source "${BASE}/App/Bash/Inc/functions.bash"
fi

if [[ -d "${BASE}/App/Bash/Inc/functions" ]]; then
    source "${BASE}/App/Bash/Inc/functions/phpCheck.sh"
    source "${BASE}/App/Bash/Inc/functions/jsonBeautify.sh"
fi

if [[ -f "${BASE}/App/Bash/Inc/appSpeeders.bash" ]]; then
    source "${BASE}/App/Bash/Inc/appSpeeders.bash"
fi

if [[ -f "${BASE}/App/Bash/Inc/kadu.bash" ]]; then
    source "${BASE}/App/Bash/Inc/kadu.bash"
fi

if [[ -f "${BASE}/App/Bash/Inc/prompt.bash" ]]; then
    source "${BASE}/App/Bash/Inc/prompt.bash"
fi

if [[ -f "${BASE}/App/Bash/Inc/fortunes.bash" ]]; then
    source "${BASE}/App/Bash/Inc/fortunes.bash"
fi

if [[ -f "${BASE}/App/Bash/Completion/git.bash" ]]; then
    source "${BASE}/App/Bash/Completion/git.bash"
fi

if [[ -f "${BASE}/App/Bash/Completion/kadu-completion.bash" ]]; then
    source "${BASE}/App/Bash/Completion/kadu-completion.bash"
fi

if [[ -f "${BASE}/App/Bash/Inc/path.bash" ]]; then
    source "${BASE}/App/Bash/Inc/path.bash"
fi

bind 'set match-hidden-files off'

export CDPATH=".:${HOME}/Development/Guest/dev_environment/guestcentric-src"
export DYNAMO_ENDPOINT=http://localhost:8000
export SHELL_SESSION_HISTORY=0

alias guest="cd /Users/eduardo.fernandes/Development/Guest/dev_environment/guestcentric-src"
alias joinMarkDown="/Users/eduardo.fernandes/Things/Notebook/.resources/joinMarkDown.php"
alias clear="echo 'flush_all' | nc localhost 11211"
