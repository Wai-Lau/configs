export TERM="xterm-256color"
bindkey -e
export DOCKER_HOST=tcp://192.168.99.100:2376
export DOCKER_CERT_PATH=/c/Users/wailu/.docker/machine/certs
export DOCKER_TLS_VERIFY=1
export PYSPARK_DRIVER_PYTHON=python3.5
export PYSPARK_PYTHON=python3.5

export XDG_CONFIG_HOME=~/.config
. /usr/local/lib/python3.5/dist-packages/powerline/bindings/zsh/powerline.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export EDITOR=/usr/bin/vim

alias dos2unix='find . -type f -print0 | xargs -0 -n 1 -P 4 dos2unix'

setopt extendedglob
c() print -rC$[COLUMNS/(($1)+2)] -- "${(M)@[2,-1]##?(#c0,$[$1])}"
rmd() {
  docker rm -f $(docker ps -a -q)
}
alias lsc='c 15 $(ls -a)'

alias ls='ls --color=auto'
alias pip='pip3'
alias python='python3'
alias speak='cmd speak'
alias docker-compose='dmd docker-compose'
alias docker-machine='cmd docker-machine'

export NVM_DIR="/home/wai/.nvm"
nvm() {
    unset -f nvm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    nvm "$@"
}

node() {
    unset -f node
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    node "$@"
}

npm() {
    unset -f npm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    npm "$@"
}
