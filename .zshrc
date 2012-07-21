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
export LANG="ja_JP.UTF-8"
# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

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
case "${OSTYPE}" in
freebsd*|darwin*)
  alias ls="ls -G -w"
  alias ll="ls -alG"
  ;;
linux*)
  alias ls="ls --color"
  alias ll="ls -al --color"
  ;;
esac
alias h="history 0"
alias be="bundle exec"
alias r="bundle exec rails"



[ -f ~/.zshrc.mine ] && source ~/.zshrc.mine
