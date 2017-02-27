# Setting TERM is normally done through /etc/ttys.  Do only override
# if you're sure that you'll never log in via telnet or xterm or a
# serial line.
# Use cons25l1 for iso-* fonts
# TERM=cons25;     export TERM

BLOCKSIZE=K; export BLOCKSIZE
EDITOR=nano; export EDITOR
PAGER=less;  export PAGER

echo ""
echo "Using shell $SHELL $($SHELL --version)"
echo ""

PATH="$HOME/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"; export PATH
WORKSPACE="${HOME}/workspace"; export WORKSPACE

export PS1='\u@\h: \w $ '
export PS2='> '

export PATH

if [ -f $(brew --prefix)/etc/bash_completion ]; then
 . $(brew --prefix)/etc/bash_completion
fi

## Golang
export GOPATH="${HOME}/golang"
export GOBIN="${GOPATH}/bin"

echo "Golang Environment:"
echo "  - Using $(which go) $(go version)"
echo "  - GOPATH=${GOPATH}"

PATH="${GOPATH}/bin:$PATH";

## NodeJS
echo "NodeJS Environment:"
echo "  - Using $(which node) $(node -v)"
echo "  - Using $(which npm) v$(npm -v)"

## Java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
echo "Java Environment:"
echo "  - Using JAVA_HOME ${JAVA_HOME}"
java -version

## RbENV
eval "$(rbenv init -)"
gem env

## Add ChefDK _after_ rbenv shims
PATH="/opt/chefdk/bin:$PATH"

## Add private key to ssh-agent
ssh-add ~/.ssh/id_rsa

alias fuck='eval $(thefuck $(fc -ln -1))'
alias fuckin=sudo
