PATH="$PATH:.:/bin:/sbin:/usr/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/opt/local/bin:/opt/local/sbin"
export PATH="$PATH:${HOME}/Shell/App/Git/Scripts"
export PATH="$PATH:/Applications/MySQLWorkbench.app/Contents/MacOS"

# tcl
export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/tcl-tk/lib"
export CPPFLAGS="-I/usr/local/opt/tcl-tk/include"
export PKG_CONFIG_PATH="/usr/local/opt/tcl-tk/lib/pkgconfig"

export PATH=$PATH:${HOME}/Development/dev_environment/gc-tasks
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Go
export PATH="$PATH:/usr/local/go/bin"
export GOPATH=$HOME/Development/Go/

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

export KADU="${HOME}/Development/Java/Kadu"
export JUNIT_HOME="${KADU}/lib"
export CLASSPATH=".:${KADU}/src:${JUNIT_HOME}/junit-4.10.jar"
