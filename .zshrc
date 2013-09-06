## completion
autoload -U compinit
compinit
setopt auto_cd
setopt auto_pushd # pushd
setopt correct
setopt list_packed
setopt nolistbeep
autoload predict-on
predict-on

## Environment
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

EDITER=vim

## alias
case "${OSTYPE}" in
freebsd*|darwin*)
  # rbenv
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
  alias ll="ls -alG"
  alias ls="ls -G -w"
  ;;
linux*)
  alias ll="ls -al --color"
  alias ls="ls --color"
  ;;
esac
alias h="history 0"
alias be="bundle exec"
alias r="bundle exec rails"
alias git="git stash list; git"
alias mkrsense="ruby $RSENSE_HOME/etc/config.rb > ~/.rsense"

[ -f ~/.zshrc.mine ] && source ~/.zshrc.mine

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
