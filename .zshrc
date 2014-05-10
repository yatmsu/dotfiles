## completion
autoload -U compinit
compinit
setopt auto_cd
setopt auto_pushd # pushd
setopt correct
setopt list_packed
setopt nolistbeep

## Environment
export LANG="ja_JP.UTF-8"

## history
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_all_dups
setopt share_history    # share command history data
setopt hist_ignore_space
setopt hist_reduce_blanks

## prompt
PROMPT="%/%% "
PROMPT2="%_%% "
SPROMPT="%r is correct? [n,y,a,e]: "

EDITOER=vim

## alias
case "${OSTYPE}" in
freebsd*|darwin*)
  # rbenv
  export PATH="/usr/local/bin:$PATH"
  eval "$(rbenv init -)"
  # Rails
  export SECRET_KEY_BASE="a38d6313981985b5d084455c8376673c0b110909458ec1422dbc9c5cdf8dc51925c36ab2b0c58255b05d679781b65f5096ec46024ff262ed78da953b5a069087"
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
alias mkrsense="ruby $RSENSE_HOME/etc/config.rb > ~/.rsense"

[ -f ~/.zshrc.mine ] && source ~/.zshrc.mine

## Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
