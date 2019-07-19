# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

export BASE="${HOME}/Shell"
export CLICOLOR=1
export CLICOLOR_FORCE=1

if [[ -f "${BASE}/App/Bash/Inc/settings.bash" ]]; then
    source "${BASE}/App/Bash/Inc/settings.bash"
fi

if [[ -f "${BASE}/App/Bash/Inc/aliases.bash" ]]; then
    source "${BASE}/App/Bash/Inc/aliases.bash"
fi

if [[ -f "${BASE}/App/Bash/Inc/execute.bash" ]]; then
    source "${BASE}/App/Bash/Inc/execute.bash"
fi

# if [[ -f "${BASE}/App/Bash/Inc/dirColors.bash" ]]; then
#     eval "$(dircolors ${BASE}/App/Bash/Inc/dirColors.bash)"
# fi

if [[ -f "${BASE}/App/Bash/Inc/prompt.bash" ]]; then
    source "${BASE}/App/Bash/Inc/prompt.bash"
fi

if [[ -f "${BASE}/App/Bash/Inc/fortunes.bash" ]]; then
    source "${BASE}/App/Bash/Inc/fortunes.bash"
fi

if [[ -f "${BASE}/App/Bash/Completion/git.bash" ]]; then
    source "${BASE}/App/Bash/Completion/git.bash"
fi

export PATH="$PATH:.:/bin:/sbin:/usr/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/opt/local/bin:/opt/local/sbin"
export PATH="$PATH:${HOME}/Shell/App/Git/Scripts"
export PATH="$PATH:/Applications/MySQLWorkbench.app/Contents/MacOS"

# tcl
export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/tcl-tk/lib"
export CPPFLAGS="-I/usr/local/opt/tcl-tk/include"
export PKG_CONFIG_PATH="/usr/local/opt/tcl-tk/lib/pkgconfig"

export PATH=$PATH:${HOME}/Development/dev_environment/gc-tasks
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$PATH:Development/flutter/bin"

export CDPATH=~/Development/dev_environment/guestcentric-src/gc-global.01:/Users/eduardo.fernandes/Development/dev_environment/guestcentric-src/cmf:/Users/eduardo.fernandes/Development/dev_environment/guestcentric-src
