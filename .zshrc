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
alias tags='ctags -R --exclude=.git --exclude=node_modules --exclude=.dev --exclude=app/assets/javascripts -o'
alias buddy='dev cd cloudbud && cd buddies'
alias vim!='sudo vim'
alias kk='kctx'
alias kc='kubectl config current-context'

alias colocon='vim ~/.vim/bundle/vim-colorschemes/colors'
alias alacon='vim ~/.config/alacritty/alacritty.yml'

v () {
  if [[ $# -eq 0 ]]
  then
    vim
  else
    dev cd $* && vim
  fi
}

f () {
  dev cd $* && ls -G
}

alias snapfind='k get pods | grep snapshot | awk '\''{print $1}'\'''
alias snap='k exec -it $(snapfind) -- sh --login'
alias searchbuddyfind='k get -n cloudbuddies pods | grep searchbuddy | awk '\''{print $1}'\'''
alias sblog='k logs -f $(searchbuddyfind) -n cloudbuddies'

export XDG_CONFIG_HOME=~/.config
. /Users/wai/Library/Python/3.9/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh
export EDITOR=/usr/local/bin/vim
export SKIP_RAILGUN_CHECK=1
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

if [ -e /Users/wai/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/wai/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
