bindkey -e
# load dev, but only if present and the shell is interactive
if [[ -f /opt/dev/dev.sh ]] && [[ $- == *i* ]]; then
  source /opt/dev/dev.sh
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(shadowenv init zsh)"
export PATH=/usr/local/bin:$PATH
alias pip='pip3'
alias python='python3'
alias tags='ctags -R'
export XDG_CONFIG_HOME=~/.config
. /usr/local/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh
export EDITOR=/usr/local/bin/vim
alias k=kubectl
alias g=git
autoload -U compinit && compinit
zmodload -i zsh/complist

bindkey "\e[3~" delete-char
alias "dev testall"="source dev.sh && TERM=color dev test SUITE=all"
export GOPATH=/Users/wai
export FZF_DEFAULT_COMMAND="find . -path '*/\.*' -type d -prune -o -type f -print -o -type l -print 2> /dev/null | sed s/^..//"

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/wai/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/wai/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/wai/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/wai/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export PATH=$GOPATH/bin:$PATH

# cloudplatform: add Shopify clusters to your local kubernetes config
export KUBECONFIG=${KUBECONFIG:+$KUBECONFIG:}/Users/wai/.kube/config:/Users/wai/.kube/config.shopify.cloudplatform
for file in /Users/wai/src/github.com/Shopify/cloudplatform/workflow-utils/*.bash; do source ${file}; done

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
alias ls='ls -G'
export PATH="/usr/local/sbin:$PATH"

export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="PKG_CONFIG_PATH:/usr/local/opt/openssl@1.1/lib/pkgconfig"
export DD_API_KEY="a88a256bc75babc118e8e62583eda753"
export DD_APPLICATION_KEY="c41f9015129d74057402960888a9da6ac3a35f73"

