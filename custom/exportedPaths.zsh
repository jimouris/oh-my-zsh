# This is where you put your hand rolled scripts (remember to chmod them)
PATH="$HOME/bin:$PATH"

export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
export PATH="$PATH/$JAVA_HOME/bin"
export PATH="$HOME/.cabal/bin:/opt/cabal/1.20/bin:/opt/ghc/7.10.3/bin:$PATH"
export PATH="/opt/llvm/bin:$PATH"
export PATH="$PATH:/opt/eclipse_basic/bin/x86_64_linux"
export PATH=/usr/bin/node:$PATH
export CATALINA_HOME="/opt/tomcat/"

CLASSPATH=$CLASSPATH:/usr/share/java/mysql.jar
export CLASSPATH

export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# LB - DOOP related environment
export LD_LIBRARY_PATH=/usr/local/lib:${LD_LIBRARY_PATH}
export DOOP_HOME=/home/jimouris/repos/doop
export DOOP_PROJECT=doop
export DOOP_EXTERNALS=/home/jimouris/repos/doop-benchmarks/JREs
export DOOP_JRE_LIB=/home/jimouris/repos/doop-benchmarks/JREs
export LB_PAGER_FORCE_START=1
export LB_MEM_NOWARN=1
export LOGICBLOX_HOME=/home/jimouris/lb-engines/logicblox-3.10.29/logicblox
export PATH=${LOGICBLOX_HOME}/bin:${PATH}

export PATH="/usr/lib/ccache:$PATH"

export PATH="/opt/aspectj1.8/bin:$PATH"
export PATH="/home/jimouris/.linuxbrew/bin:$PATH"
export CLASSPATH="/opt/aspectj1.8/lib/aspectjrt.jar:$CLASSPATH"

# Sharemind
export PATH="/home/jimouris/repos/Sharemind/build-sdk/prefix/bin:$PATH"
export LD_LIBRARY_PATH="/home/jimouris/repos/Sharemind/build-sdk/prefix/lib/"
export SHAREMIND_BIN="/home/jimouris/repos/Sharemind/build-sdk/prefix/bin/"

# export PATH=$PATH:/opt/intel/composer_xe_2015.0.090/bin/intel64

. /usr/local/bin/virtualenvwrapper.sh

