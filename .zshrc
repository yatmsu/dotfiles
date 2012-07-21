## completion
autoload -U compinit
compinit
setopt auto_cd
setopt auto_pushd
setopt correct
setopt list_packed
setopt nolistbeep
autoload predict-on
predict-on

## Environment
# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export LANG="ja_JP.UTF-8"

## history
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_ignore_dups # ignore duplication command history list
setopt share_history    # share command history data

## prompt
PROMPT="%/%% "
PROMPT2="%_%% "
SPROMPT="%r is correct? [n,y,a,e]: "

## alias
alias ll="ls -alG"
alias h="history 0"
alias be="bundle exec"
alias r="bundle exec rails"



[ -f ~/.zshrc.mine ] && source ~/.zshrc.mine
