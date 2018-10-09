export TERM="xterm-256color"
bindkey -e
source  ~/powerlevel9k/powerlevel9k.zsh-theme
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export EDITOR=/usr/bin/vim
export POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
export POWERLEVEL9K_SHORTEN_STRATEGY=truncate_folders
export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time host)
export ZLE_RPROMPT_INDENT=2
alias dos2unix='find . -type f -print0 | xargs -0 -n 1 -P 4 dos2unix'
setopt extendedglob
c() print -rC$[COLUMNS/(($1)+2)] -- "${(M)@[2,-1]##?(#c0,$[$1])}"
alias lsc='c 15 $(ls -a)'
alias ls='ls --color=auto'
alias pip='pip3'
alias python='python3'
alias speak='cmd speak'

